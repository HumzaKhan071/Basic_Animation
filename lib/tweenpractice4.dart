import 'dart:html';

import 'package:flutter/material.dart';

class finalpractice extends StatefulWidget {
  const finalpractice({Key? key}) : super(key: key);

  @override
  _finalpracticeState createState() => _finalpracticeState();
}

class _finalpracticeState extends State<finalpractice> {
  double _width = 200;
  Color _color = Colors.blue;
  double _margin = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TweenAnimationBuilder(
          duration: Duration(milliseconds: 500),
          tween: Tween<double>(begin: 0, end: 1),
          child: Text(
            "Humza Khan",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          builder: (context, double _val, child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.all(_val * 20),
              ),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            margin: EdgeInsets.all(_margin),
            duration: Duration(seconds: 2),
            height: 300,
            width: _width,
            color: _color,
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () => setState(
                    () {
                      _width = 500;
                    },
                  ),
                  child: Text("Animated width"),
                ),
                RaisedButton(
                  onPressed: () => setState(
                    () {
                      _margin = 60;
                    },
                  ),
                  child: Text("Animated margin"),
                ),
                RaisedButton(
                  onPressed: () => setState(
                    () {
                      _color = Colors.red;
                    },
                  ),
                  child: Text("Animated Color"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
