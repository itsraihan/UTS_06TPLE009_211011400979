import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoeapp/homepage.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  startSplashScreen() {
    var duration = const Duration(seconds: 3);

    return Timer(
      duration, () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Image.asset(''),
      ),
    );
  }
}