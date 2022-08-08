import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';

import 'widgets/animation_widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    
    Timer(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacementNamed('/page1');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimationWidget1(),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimationWidget2(),
              SizedBox(width: 40),
              AnimationWidget3(),
            ],
          ),
        ],
      ),
    );
  }
}
