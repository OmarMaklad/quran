import 'package:dio/dio.dart';
import 'package:quran/core/storage/app_storage.dart';

import 'model.dart';

class SearchController {
  
  SearchModel searchModel;

  Future<void> search(String searchValue)async{
    searchModel = null;
    if(searchValue == null || searchValue.isEmpty) return;
    final language = AppStorage.isAppLanguageArabic ? 'ar' : 'en';
    String url = 'http://api.alquran.cloud/v1/search/$searchValue/all/$language';
    final response = await Dio().get(url);
    try{
      searchModel = SearchModel.fromJson(response.data);
    }catch(e){
      searchModel = null;
    }
  }
  
}