import 'package:flutter/rendering.dart' show ShapeBorder;

import 'dart:math';



/// An abstract base impplementation for hand drawn like shape borders.
/// 
/// _the wiggliness emulates a more natural design._
abstract class SketchBorderBase extends ShapeBorder {
  /// If not null it will use the same [seed] every time it redraws.
  final int? seed;

  /// How evenly the points should be distributed on the shapes curve.
  /// 
  /// - `0` is completely evenly spaced,
  /// - `1` _(theoretically)_ allows all points to occupy the same space
  /// 
  /// For the generation n _(one more for cyclic curves)_ segment lengths are
  /// generated using [getRandomDouble] and then normalized to the whole
  /// _(affected)_ curve length.
  final double randomness;

  /// Defines the maximum extend of the curves _(depends on the [strokeAlign]
  /// parameter)._
  /// 
  /// _This property is not influenced by the [randomness] value, since it would
  /// just offset and scale the curve in one operation._
  final double amplitude;

  /// The relative position of the sketch border in relation to the original
  /// shapes [Border].
  /// 
  /// Values typically range from -1.0 ([strokeAlignInside], inside border) to
  /// 1.0 ([strokeAlignOutside], outside border), without any bound constraints
  /// (e.g., a value of -2.0 is not typical, but allowed). A value of 0
  /// ([strokeAlignCenter], default) will center the sketch border on the
  /// "original" edge.
  final double strokeAlign;

  /// The sketch border extends fully inside of the border path.
  ///
  /// This is a constant for use with [strokeAlign].
  static const double strokeAlignInside = -1.0;

  /// The sketch extends outwards from the center of the path, with half of the
  /// [amplitude] on the inside, and the other half on the outside of the path.
  ///
  /// This is a constant for use with [strokeAlign].
  ///
  /// This is the default value for [strokeAlign].
  static const double strokeAlignCenter = 0.0;

  /// The sketch border extends fully outside of the border path.
  ///
  /// This is a constant for use with [strokeAlign].
  static const double strokeAlignOutside = 1.0;

  /// Abstract const constructor. This constructor enables subclasses to provide
  /// const constructors so that they can be used in const expressions.
  const SketchBorderBase({
    this.seed,
    this.randomness = 0.333,
    this.amplitude = 10,
    this.strokeAlign = strokeAlignCenter,
  });

  /// Generates a non-negative random floating point value uniformly distributed
  /// in the range from 1.0-[randomness], inclusive, to 1.0, exclusive.
  ///
  /// **Example:**
  /// ```dart
  /// var doubleValue = getRandomDouble(Random()); // Value is >= 0.0 and < 1.0.
  /// doubleValue = getRandomDouble(Random(), 0.4); // Value is >= 0.6 and < 1.0.
  /// ```
  /// 
  /// **Undefined behaiviour for a negative randomness!**
  static double getRandomDouble(Random random, {double randomness=1}) {
    return random.nextDouble()*randomness + (1-randomness);
  }

  @override
  bool operator ==(Object other) =>
      other == this ||
          other is SketchBorderBase &&
          other.seed == seed &&
          other.randomness == randomness &&
          other.amplitude == amplitude &&
          other.strokeAlign == strokeAlign;
  
  @override
  int get hashCode => Object.hash(
    seed,
    randomness,
    amplitude,
    strokeAlign
  );
}
