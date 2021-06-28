import 'package:dio/dio.dart';
import 'package:quran/core/quran/surah_model.dart';
import 'package:quran/core/storage/app_storage.dart';

class QuranController {

  static Future<String> getSurahById(int id)async{
    String url = 'http://api.alquran.cloud/v1/surah/$id';
    if(!AppStorage.isAppLanguageArabic)
      url = url + '/en.asad';
    final response = await Dio().get(url);
    SurahModel surahModel = SurahModel.fromJson(response.data);
    String surah = '';
    bool removed = false;
    surahModel.data.ayahs.forEach((element) {
      String ayah = removed ? element.text : element.text.replaceAll('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيم', '');
      if(!removed) ayah = 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيم' + '\n' + ayah;
      removed = true;
      surah = surah + ayah + ' (${element.numberInSurah}) ';
    });
    return surah;
  }

}