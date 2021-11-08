import 'package:flutter/material.dart';

class TweenAnimated extends StatefulWidget {
  const TweenAnimated({Key? key}) : super(key: key);

  @override
  _TweenAnimatedState createState() => _TweenAnimatedState();
}

class _TweenAnimatedState extends State<TweenAnimated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
          child: Text(
            "Humza Khan",
            style: TextStyle(
                color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 500),
          builder: (context, double _val, child) {
            return Opacity(
              opacity: _val,
              child: Padding(
                padding: EdgeInsets.only(top: _val * 20, left: _val * 20),
                child: child,
              ),
            );
          }),
    );
  }
}
