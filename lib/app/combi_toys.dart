
import 'package:flutter/material.dart';

import '/app/home_page.dart';

class CombiToys extends StatelessWidget {
  const CombiToys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CombiToys',
      home: HomePage(),
    );
  }
}