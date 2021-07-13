import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:quran/core/quran/surah_model.dart';
import 'package:quran/core/storage/app_storage.dart';

class QuranController {

  static Future<String> getSurahById(int id)async{
    if(AppStorage.isAppLanguageArabic){
      final surah = await _getSurahFromJson(id);
      return surah;
    }
    String url = 'http://api.alquran.cloud/v1/surah/$id' + '/en.asad';
    final response = await Dio().get(url);
    SurahModel surahModel = SurahModel.fromJson(response.data);
    String surah = '';
    bool removed = false;
    surahModel.data.ayahs.forEach((element) {
      String ayah = removed ? element.text : element.text.replaceFirst('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيم', '');
      surah = surah + ayah + ' (${element.numberInSurah}) ';
    });
    return surah;
  }

  static Future<String> _getSurahFromJson(int id)async{
    final String response = await rootBundle.loadString('assets/ar.json');
    final data = await json.decode(response)['AR'] as List;
    String surah = '';
    data.forEach((element) {
      if(element['surah_number'] == id)
        surah = surah + ' ${element['content']}' + ' (${element['verse_number']})';
      else
        return;
    });
    return surah;
  }

}