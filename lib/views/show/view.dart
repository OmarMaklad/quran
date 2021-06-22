import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/widgets/AnimatedWidgets.dart';

class ShowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body:Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/show.png"),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height:height*.07,
                width: height*.3,
                decoration: BoxDecoration(
                  image:DecorationImage(
                      image: AssetImage("assets/images/Black.png"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text("الفاتحة",style: TextStyle(color: Colors.black,fontSize:22,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: AnimatedWidgets(
                  horizontalOffset: 50,
                  virticaloffset: 20,
                  duration: 1,
                  child: Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ (1)الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ (2) الرَّحْمَنِ الرَّحِيمِ (3) مَالِكِ يَوْمِ الدِّينِ (4) إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ (5) اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ (6) صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ (7)",
                    textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
