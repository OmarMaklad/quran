// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    @required this.search,
  });

  Search search;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    search: Search.fromJson(json["search"]),
  );

  Map<String, dynamic> toJson() => {
    "search": search.toJson(),
  };
}

class Search {
  Search({
    @required this.query,
    @required this.totalResults,
    @required this.currentPage,
    @required this.totalPages,
    @required this.results,
  });

  String query;
  int totalResults;
  int currentPage;
  int totalPages;
  List<Result> results;

  factory Search.fromJson(Map<String, dynamic> json) => Search(
    query: json["query"],
    totalResults: json["total_results"],
    currentPage: json["current_page"],
    totalPages: json["total_pages"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "query": query,
    "total_results": totalResults,
    "current_page": currentPage,
    "total_pages": totalPages,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    @required this.verseId,
    @required this.text,
    @required this.translations,
  });

  int verseId;
  String text;
  List<Translation> translations;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    verseId: json["verse_id"],
    text: json["text"],
    translations: List<Translation>.from(json["translations"].map((x) => Translation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "verse_id": verseId,
    "text": text,
    "translations": List<dynamic>.from(translations.map((x) => x.toJson())),
  };
}

class Translation {
  Translation({
    @required this.name,
    @required this.id,
    @required this.text,
  });

  Name name;
  int id;
  String text;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    name: nameValues.map[json["name"]],
    id: json["id"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "id": id,
    "text": text,
  };
}

enum Name { FADEL_SOLIMAN_BRIDGES_TRANSLATION, DR_MUSTAFA_KHATTAB_THE_CLEAR_QURAN, INDONESIAN_ISLAMIC_AFFAIRS_MINISTRY, KING_FAHAD_QURAN_COMPLEX }

final nameValues = EnumValues({
  "Dr. Mustafa Khattab, the Clear Quran": Name.DR_MUSTAFA_KHATTAB_THE_CLEAR_QURAN,
  "Fadel Soliman, Bridges’ translation": Name.FADEL_SOLIMAN_BRIDGES_TRANSLATION,
  "Indonesian Islamic affairs ministry": Name.INDONESIAN_ISLAMIC_AFFAIRS_MINISTRY,
  "King Fahad Quran Complex": Name.KING_FAHAD_QURAN_COMPLEX
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
