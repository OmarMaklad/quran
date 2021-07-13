import 'dart:io';

import 'package:flutter/material.dart';

class CustomMp3ListTille extends StatelessWidget {
  final String title;
  final String image;
  final Function ontap;
  final String number;
  final String url;
  const CustomMp3ListTille(
      {this.title, this.image, this.ontap, this.number, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        "استمع",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          // fontSize: 20
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
