import 'dart:async';

import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/imeg/e600cd7bcd18907199f029e38f4ccde7-removebg-preview.png",
              height: 200,
              width: 200,
            ),
            Padding(padding: EdgeInsets.only(top: 60)),
            Image.asset(
              "asset/imeg/flutter-logo-vector-removebg-preview.png",
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
