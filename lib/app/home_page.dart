
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfbfa),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color(0xff2c2b2a),
        foregroundColor: Color(0xfffcfbfa),
      ),
      body: Center(
        child: Text(
          '<missing content>',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff2c2b2a),
          ),
        ),
      ),
    );
  }
}