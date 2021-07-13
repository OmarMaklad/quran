import 'package:flutter/material.dart';
import 'package:quran/core/quran/sura.dart';
import 'package:quran/core/router/router.dart';
import 'package:quran/core/storage/app_storage.dart';
import 'package:quran/views/show/view.dart';
import 'package:quran/widgets/customButton.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash.png"),
              fit: BoxFit.cover
          ),
        ),
        child: ListView.builder(
          itemCount: Suras.list.length,
          itemBuilder: (context, index) {
            final surah = Suras.list[index];
            final surahTitle = AppStorage.isAppLanguageArabic ? surah['name'] : surah['transliteration_en'];
            return CustomButton(
              title: surahTitle,
              onPressed: ()=> MagicRouter.navigateTo(ShowView(surahTitle,surah['number'])),
            );
          },
        ),
      ),
    );
  }
}