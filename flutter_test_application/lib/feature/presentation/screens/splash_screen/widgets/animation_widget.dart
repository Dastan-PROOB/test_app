import 'dart:core';

import 'package:flutter/material.dart';


class AnimationWidget1 extends StatefulWidget {
  @override
  State<AnimationWidget1> createState() => _AnimationWidget1State();
}

class _AnimationWidget1State extends State<AnimationWidget1>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? rotation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration:const Duration(milliseconds: 3000));
    rotation = Tween(begin: 0.0, end: 8.0).animate(controller!);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller!.forward();
    return AnimatedBuilder(
        animation: controller!,
        builder: (context, child) {
          return Transform.rotate(
            angle: rotation!.value,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.orange),
            ),
          );
        });
  }
}

class AnimationWidget2 extends StatefulWidget {
  @override
  State<AnimationWidget2> createState() => _AnimationWidget2State();
}

class _AnimationWidget2State extends State<AnimationWidget2>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? rotation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end: 8.0).animate(controller!);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller!.forward();
    return AnimatedBuilder(
        animation: controller!,
        builder: (context, child) {
          return Transform.rotate(
            angle: rotation!.value,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(color: Colors.brown.shade700),
            ),
          );
        });
  }
}

class AnimationWidget3 extends StatefulWidget {
  @override
  State<AnimationWidget3> createState() => _AnimationWidget3State();
}

class _AnimationWidget3State extends State<AnimationWidget3>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? rotation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end: 8.0).animate(controller!);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller!.forward();
    return AnimatedBuilder(
        animation: controller!,
        builder: (context, child) {
          return Transform.rotate(
            angle: rotation!.value,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(color: Colors.teal.shade600),
            ),
          );
        });
  }
}