import 'package:flutter/material.dart';
import 'package:quran/views/show/view.dart';
import 'package:quran/widgets/AnimatedWidgets.dart';
import 'package:quran/widgets/customButton.dart';
import 'package:quran/widgets/router/router.dart';

class SelectLanguage extends StatelessWidget {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             AnimatedWidgets(
               horizontalOffset: 20,
                 virticaloffset: -50,
                 duration: 2.1,
                 child: CustomButton(title: "العربية")),
              AnimatedWidgets(
                  horizontalOffset: -20,
                  virticaloffset: -50,
                  duration: 2.1,
                 child: CustomButton(title: "English")),
              AnimatedWidgets(
                  horizontalOffset: 20,
                  virticaloffset: -50,
                  duration: 1.9,
                 child: CustomButton(title: "français")),
              AnimatedWidgets(
                 horizontalOffset: -20,
                 virticaloffset: -50,
                 duration: 1.6,
                 child: CustomButton(title: "Deutsche")),
              AnimatedWidgets(
                  horizontalOffset: 20,
                  virticaloffset: -50,
                  duration: 1.3,
                 child: CustomButton(title: "Español")),
              AnimatedWidgets(
                  horizontalOffset: -20,
                  virticaloffset: -50,
                  duration: 1,
                  child: CustomButton(title: "русский")),
            ],
          ),
        ),
      ),

    );
  }
}
