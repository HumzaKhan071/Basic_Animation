import 'dart:async';

import 'package:animatied_container/splashsceen.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  _HomeScreeenState createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  @override
  void initState() {
    super.initState();
    setState(() {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const SplashScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Humza",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
