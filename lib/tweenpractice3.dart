import 'dart:ui';

import 'package:flutter/material.dart';

class TweenAnimate extends StatefulWidget {
  const TweenAnimate({Key? key}) : super(key: key);

  @override
  _TweenAnimateState createState() => _TweenAnimateState();
}

class _TweenAnimateState extends State<TweenAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.yellow,
        ),
        child: TweenAnimationBuilder(
          duration: Duration(seconds: 1),
          child: Text(
            "Arfeeen",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, double _val, child) {
            return Opacity(
              opacity: _val,
              child: Container(
                height: 40,
                width: 60,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.all(_val * 30),
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
