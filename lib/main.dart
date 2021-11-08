import 'package:animatied_container/tween.dart';
import 'package:animatied_container/tweenpractice2.dart';
import 'package:animatied_container/tweenpractice3.dart';
import 'package:animatied_container/tweenpractice4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _width = 200;

  double _margin = 30;

  Color _color = Colors.red;

  double _opacity = 1;
  double _radius = 30;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: finalpractice()
        //   body: AnimatedContainer(
        //     margin: EdgeInsets.all(_margin),
        //     duration: Duration(seconds: 1),
        //     width: _width,
        //     decoration: BoxDecoration(
        //       color: _color,
        //       borderRadius: BorderRadius.circular(_radius),
        //     ),
        //     child: Center(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           RaisedButton(
        //             onPressed: () => setState(() {
        //               _margin = 60;
        //             }),
        //             child: Text("Animated margin"),
        //           ),
        //           RaisedButton(
        //             onPressed: () => setState(() {
        //               _width = 500;
        //             }),
        //             child: Text("Animate Width"),
        //           ),
        //           RaisedButton(
        //             onPressed: () => setState(() {
        //               _color = Colors.black;
        //             }),
        //             child: Text("Animate Color"),
        //           ),
        //           RaisedButton(
        //             onPressed: () => setState(() {
        //               _opacity = 0;
        //             }),
        //             child: Text("Animate Opacity"),
        //           ),
        //           RaisedButton(
        //             onPressed: () => setState(() {
        //               _radius = 50;
        //             }),
        //             child: Text("Animate Radius"),
        //           ),
        //           AnimatedOpacity(
        //             opacity: _opacity,
        //             duration: Duration(seconds: 1),
        //             child: Text(
        //               "Hide me",
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           ),

        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
