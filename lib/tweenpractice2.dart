import 'package:flutter/material.dart';

class Tweenani extends StatefulWidget {
  const Tweenani({Key? key}) : super(key: key);

  @override
  _TweenaniState createState() => _TweenaniState();
}

class _TweenaniState extends State<Tweenani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
        ),
        child: Center(
            child: TweenAnimationBuilder(
                duration: Duration(milliseconds: 500),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (context, double _val, child) {
                  return Opacity(
                    
                    opacity: _val,
                    child: Padding(
                      padding: EdgeInsets.only(top: _val * 30, left: _val * 10 ),
                      child: child,
                    ),
                    
                  );
                },
                child: Text(
                  "Abdullah",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ))),
      ),
    );
  }
}
