import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran/views/selectLanguage/view.dart';
import 'package:quran/widgets/AnimatedWidgets.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        Duration(seconds:3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => SelectLanguage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.png"),
            fit: BoxFit.cover
          ),
        ),
        child: AnimatedWidgets(
          duration: 1,
          virticaloffset: 100,
          horizontalOffset: 0,
          child: Center(
            child: SizedBox(
                 height: height*.3,
                width: height*.3,
                child: Image.asset("assets/images/logo.png")),
          ),
        ),
      ),
    );
  }
}
