import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'sound.dart';

class Mp3TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlipInX(
          child: Scaffold(
            // appBar: AppBar(
            //   title: Text("الاستماع",style: TextStyle(fontWeight: FontWeight.bold),),
            // ),
            body: Mp3Page(),
          ),
    );
  }
}
