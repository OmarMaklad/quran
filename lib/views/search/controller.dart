import 'package:dio/dio.dart';

import 'model.dart';

class SearchController {
  
  SearchModel searchModel;

  Future<void> search(String searchValue)async{
    searchModel = null;
    if(searchValue == null || searchValue.isEmpty) return;
    String url = 'https://api.quran.com/api/v4/search?q=$searchValue';
    final response = await Dio().get(url);
    try{
      searchModel = SearchModel.fromJson(response.data);
    }catch(e){
      searchModel = null;
    }
  }
  
}