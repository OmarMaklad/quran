// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    @required this.code,
    @required this.status,
    @required this.data,
  });

  int code;
  String status;
  Data data;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    code: json["code"],
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    @required this.count,
    @required this.matches,
  });

  int count;
  List<Match> matches;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    count: json["count"],
    matches: List<Match>.from(json["matches"].map((x) => Match.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "matches": List<dynamic>.from(matches.map((x) => x.toJson())),
  };
}

class Match {
  Match({
    @required this.number,
    @required this.text,
    @required this.edition,
    @required this.surah,
    @required this.numberInSurah,
  });

  int number;
  String text;
  Edition edition;
  Surah surah;
  int numberInSurah;

  factory Match.fromJson(Map<String, dynamic> json) => Match(
    number: json["number"],
    text: json["text"],
    edition: Edition.fromJson(json["edition"]),
    surah: Surah.fromJson(json["surah"]),
    numberInSurah: json["numberInSurah"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "text": text,
    "edition": edition.toJson(),
    "surah": surah.toJson(),
    "numberInSurah": numberInSurah,
  };
}

class Edition {
  Edition({
    @required this.identifier,
    @required this.language,
    @required this.name,
    @required this.englishName,
    @required this.type,
  });

  Identifier identifier;
  Language language;
  Name name;
  EnglishName englishName;
  Type type;

  factory Edition.fromJson(Map<String, dynamic> json) => Edition(
    identifier: identifierValues.map[json["identifier"]],
    language: languageValues.map[json["language"]],
    name: nameValues.map[json["name"]],
    englishName: englishNameValues.map[json["englishName"]],
    type: typeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifierValues.reverse[identifier],
    "language": languageValues.reverse[language],
    "name": nameValues.reverse[name],
    "englishName": englishNameValues.reverse[englishName],
    "type": typeValues.reverse[type],
  };
}

enum EnglishName { KING_FAHAD_QURAN_COMPLEX, SIMPLE_CLEAN, JALAL_AD_DIN_AL_MAHALLI_AND_JALAL_AD_DIN_AS_SUYUTI }

final englishNameValues = EnumValues({
  "Jalal ad-Din al-Mahalli and Jalal ad-Din as-Suyuti": EnglishName.JALAL_AD_DIN_AL_MAHALLI_AND_JALAL_AD_DIN_AS_SUYUTI,
  "King Fahad Quran Complex": EnglishName.KING_FAHAD_QURAN_COMPLEX,
  "Simple Clean": EnglishName.SIMPLE_CLEAN
});

enum Identifier { AR_MUYASSAR, QURAN_SIMPLE_CLEAN, AR_JALALAYN }

final identifierValues = EnumValues({
  "ar.jalalayn": Identifier.AR_JALALAYN,
  "ar.muyassar": Identifier.AR_MUYASSAR,
  "quran-simple-clean": Identifier.QURAN_SIMPLE_CLEAN
});

enum Language { AR }

final languageValues = EnumValues({
  "ar": Language.AR
});

enum Name { EMPTY, SIMPLE_CLEAN, NAME }

final nameValues = EnumValues({
  "تفسير المیسر": Name.EMPTY,
  "تفسير الجلالين": Name.NAME,
  "Simple Clean": Name.SIMPLE_CLEAN
});

enum Type { TAFSIR, QURAN }

final typeValues = EnumValues({
  "quran": Type.QURAN,
  "tafsir": Type.TAFSIR
});

class Surah {
  Surah({
    @required this.number,
    @required this.name,
    @required this.englishName,
    @required this.englishNameTranslation,
    @required this.revelationType,
  });

  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  RevelationType revelationType;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
    number: json["number"],
    name: json["name"],
    englishName: json["englishName"],
    englishNameTranslation: json["englishNameTranslation"],
    revelationType: revelationTypeValues.map[json["revelationType"]],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "name": name,
    "englishName": englishName,
    "englishNameTranslation": englishNameTranslation,
    "revelationType": revelationTypeValues.reverse[revelationType],
  };
}

enum RevelationType { MECCAN, MEDINAN }

final revelationTypeValues = EnumValues({
  "Meccan": RevelationType.MECCAN,
  "Medinan": RevelationType.MEDINAN
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
