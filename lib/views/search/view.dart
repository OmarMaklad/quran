import 'package:flutter/material.dart';
import 'package:quran/core/storage/app_storage.dart';
import 'package:quran/views/search/controller.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  SearchController searchController = SearchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: TextField(
          decoration: InputDecoration(
            hintText: AppStorage.isAppLanguageArabic ? 'ابحث عن آية' : 'Search for Ayah',
            border: OutlineInputBorder(borderSide: BorderSide.none)
          ),
          onChanged: (v)async{
            await searchController.search(v);
            setState((){});
          },
        ),
      ),
      body: searchController.searchModel == null || searchController.searchModel.search.results.isEmpty ?
          Center(child: Text(AppStorage.isAppLanguageArabic ? 'لا توجد نتائج!' : 'No Result!'))
          : Column(
            children: [
              SizedBox(height: 10,),
              Text(AppStorage.isAppLanguageArabic ? 'نتائج البحث' : 'Search Results',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
              Divider(thickness: 2,height: 30,),
              Expanded(
                child: ListView.separated(
        padding: EdgeInsets.all(20),
        separatorBuilder: (context, index) => Divider(thickness: 2,height: 30,),
        itemCount: searchController.searchModel.search.results.length,
        itemBuilder: (context, index) {
                final searchItem = searchController.searchModel.search.results[index];
                return Row(
                  textDirection: AppStorage.isAppLanguageArabic ? TextDirection.rtl : TextDirection.ltr,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      child: Text((index + 1).toString()),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text(searchItem.text,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      height: 2
                    ),textAlign: TextAlign.center)),
                  ],
                );
        },
      ),
              ),
            ],
          ),
    );
  }
}
