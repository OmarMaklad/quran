import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/core/quran/controller.dart';
import 'package:quran/widgets/AnimatedWidgets.dart';

class ShowView extends StatefulWidget {
  final int number;
  final String name;
  ShowView(this.name,this.number);

  @override
  _ShowViewState createState() => _ShowViewState();
}

class _ShowViewState extends State<ShowView> {
  bool _isLoading = true;
  String surah;

  initState(){
    getSurah();
    super.initState();
  }

  getSurah()async{
    surah = await QuranController.getSurahById(widget.number);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(

        body:Container(
          height: double.infinity,
          margin: EdgeInsets.only(top:40),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 5),
            // mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height:height*.07,
                width: height*.3,
                decoration: BoxDecoration(
                  image:DecorationImage(
                      image: AssetImage("assets/images/Black.png"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text(widget.name,style: TextStyle(color: Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                ),
              ),
              if(!_isLoading)AnimatedWidgets(
                horizontalOffset: 50,
                virticaloffset: 20,
                duration: 1,
                child: Text(surah,
                  textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
    );
  }
}
