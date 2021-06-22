import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/views/show/view.dart';

class CustomButton extends StatelessWidget {
  final Function? onPressed;
  final String title;
  CustomButton({this.onPressed,required this.title,});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>ShowView()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height:height*.07,
        width: height*.3,
        decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage("assets/images/Golden.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: Colors.white,fontSize:22,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
