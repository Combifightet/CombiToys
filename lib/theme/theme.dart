import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

Map<String, List<Color>> accentColors = {
  'red': [ // https://coolors.co/b3343e-c74549-e35c59-eb6e63
    Color(0xffb3343e),
    Color(0xffc74549),
    Color(0xffe35c59),
    Color(0xffeb6e63),
  ],
  'orange': [ // https://coolors.co/c95202-db661e-f27d35-ff9a57
    Color(0xffc95202),
    Color(0xffdb661e),
    Color(0xfff27d35),
    Color(0xffff9a57),
  ],
  'yellow': [ // https://coolors.co/bd8e2a-d49827-e6a334-f0b04e
    Color(0xffbd8e2a),
    Color(0xffd49827),
    Color(0xffe6a334),
    Color(0xfff0b04e),
  ],
  'green': [ // https://coolors.co/2f4033-455a42-728462-9da67c
    Color(0xff2f4033),
    Color(0xff455a42),
    Color(0xff728462),
    Color(0xff9da67c),
  ],
  'blue': [ // https://coolors.co/39445c-4d5b76-747e94-b0a9a1
    Color(0xff39445c),
    Color(0xff4d5b76),
    Color(0xff747e94),
    Color(0xffb0a9a1),
  ],
  'purple': [ // https://coolors.co/6b406e-8d5380-c279a0-df9aab
    Color(0xff6b406e), // white text
    Color(0xff8d5380), // white text
    Color(0xffc279a0), // black text
    Color(0xffdf9aab), // black text
  ]
};

Color darkColor        = Color(0xff2c2b2a);
Color darkAccentColor  = Color(0xff323130);
Color lightAccentColor = Color(0xffefeeed);
Color lightColor       = Color(0xfffcfbfa);



/// see [relative luminnace](https://www.w3.org/TR/WCAG21/#dfn-relative-luminance)
double getRelativeLuminance(Color color) {
  double r = color.r <= 0.04045
    ? color.r/12.92 
    : pow((color.r+0.055)/1.055, 2.4) as double; 
  double g = color.g <= 0.04045
    ? color.g/12.92 
    : pow((color.g+0.055)/1.055, 2.4) as double; 
  double b = color.b <= 0.04045
    ? color.b/12.92 
    : pow((color.b+0.055)/1.055, 2.4) as double; 
  
  return 0.2126*r + 0.7152*g + 0.0722*b;
}

/// Ranges from 1:1 to 21:1.
/// 
/// Text and images must have a minimum contrast ratio of at least 4.5:1,
/// and large texts or images should have a ratio of at least 3:1. <br>
/// Decorative text and text in logos is exempt from these guidelines.
/// 
/// See [contrast ratio](https://www.w3.org/TR/WCAG21/#dfn-contrast-ratio),
/// also see [contrast minimum](https://www.w3.org/TR/WCAG21/#contrast-minimum)
double getContrastRatio(Color color1, Color color2) {
  double luminance1 = getRelativeLuminance(color1);
  double luminance2 = getRelativeLuminance(color2);
  // ensure luminace 1 is the lighter color
  if (luminance1<luminance2) {
    double tempLuminance = luminance1;
    luminance1 = luminance2;
    luminance2 = tempLuminance;
  }

  return (luminance1+0.05) / (luminance2+0.05);
}



class AppBarShape extends ShapeBorder {
  late final double _strength;
  late final double _randomness;
  late final int? _seed;

  AppBarShape(int? seed, {double strength = 10, double randomness = 0.333}) {
    _seed = seed;
    _strength = strength;
    _randomness = randomness;
  }

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.only();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Random random = Random(_seed);
    final path = Path();
    path.lineTo(0, rect.height+0.5*_strength);


    List<double> segments = [0];

    // always place atleast 3 segments depending on randomness
    for (int i=0; i<max(3, (rect.width/(2.5*rect.height)).round()); i++) {
      segments.add(segments.last + getRandomDouble(random, randomness: _randomness));
    }

    Offset prevPoint = Offset(
      0,
      rect.height+0.5*_strength
    );

    for (int i=1; i<segments.length; i++) {
      Offset nextPoint = Offset(
        segments[i]/segments.last*rect.width,
        rect.height+0.5*_strength + _strength*(random.nextDouble()-0.5)
      );
      if (i==segments.length-1) { // last point is fixed
        nextPoint = Offset(
          rect.width,
          rect.height+0.5*_strength
        );
      }

      Offset controlPoint1 = Offset(
        prevPoint.dx + ((random.nextDouble()*2-1)*_randomness*0.3 + 0.3) * (nextPoint.dx-prevPoint.dx),
        prevPoint.dy
      );
      Offset controlPoint2 = Offset(
        nextPoint.dx - ((random.nextDouble()*2-1)*_randomness*0.3 + 0.3) * (nextPoint.dx-prevPoint.dx),
        nextPoint.dy
      );
      if (i==segments.length-1) { // last point is fixed
        controlPoint2 = Offset(
          controlPoint2.dx,
          nextPoint.dy
        );
      }
      
      if (controlPoint1.dx>controlPoint2.dx) {  // ensure the path never travels backwards
        controlPoint1 = Offset(
          (controlPoint1.dx+controlPoint2.dx)/2,
          controlPoint1.dy
        );
        controlPoint2 = Offset(
          controlPoint1.dx,
          controlPoint1.dy
        );
      }

      Offset centerPoint = controlPoint1 + (controlPoint2-controlPoint1) * ((random.nextDouble()-0.5)*_randomness + 0.5);

      path.quadraticBezierTo( // first half
        controlPoint1.dx, controlPoint1.dy, // end point
        centerPoint.dx, centerPoint.dy      // control point
      );
      path.quadraticBezierTo( // second half
        controlPoint2.dx, controlPoint2.dy, // end point
        nextPoint.dx, nextPoint.dy          // control point
      );

      prevPoint = nextPoint;
    }

    
    // Offset prevPointPos = Offset(
    //   segments[1]/segments.last*rect.width,
    //   rect.height+0.5*_strength + _strength*(random.nextDouble()-0.5)
    // );

    // Offset prevControlPos = Offset(
    //   ((segments[0]+segments[1])/2 + (segments[1]-(segments[0]))*(random.nextDouble()-0.5)*_randomness)/segments.last*rect.width,
    //   rect.height+0.5*_strength + _strength*(2*random.nextDouble()-1)
    // );
    
    // path.quadraticBezierTo(
    //   prevControlPos.dx,                                                        // x1
    //   prevControlPos.dy,                                                        // y1
    //   prevPointPos.dx,                                                          // x2
    //   prevPointPos.dy                                                           // y2
    // );

    // for (int i=2; i<segments.length; i++) {
    //   double nextXPos = ((segments[i-1]+segments[i])/2 + (segments[i]-(segments[i-1]))*(random.nextDouble()-0.5)*_randomness)/segments.last*rect.width;
    //   double incline = (prevPointPos.dy-prevControlPos.dy)/(prevPointPos.dx-prevControlPos.dx);

    //   prevControlPos = Offset(
    //     nextXPos,
    //     incline*nextXPos + (prevControlPos.dy - prevControlPos.dx*incline)
    //   );

    //   prevPointPos = Offset(
    //     segments[i]/segments.last*rect.width,
    //     rect.height+0.5*_strength + _strength*(random.nextDouble()-0.5)
    //   );

    //   if (i == segments.length-1) {
    //     prevPointPos = Offset(prevPointPos.dx, rect.height+0.5*_strength);
    //   }

    //   path.quadraticBezierTo(
    //     prevControlPos.dx,                                                      // x1
    //     prevControlPos.dy,                                                      // y1
    //     prevPointPos.dx,                                                        // x2
    //     prevPointPos.dy                                                         // y2
    //   );
    // }

    path.lineTo(rect.width, 0);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}


double getRandomDouble(Random random, {double randomness=1}) {
  return random.nextDouble()*randomness + 1-randomness;
}
