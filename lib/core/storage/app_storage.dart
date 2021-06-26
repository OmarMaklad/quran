import 'package:quran/core/router/router.dart';
import 'package:quran/views/home/view.dart';
import 'package:quran/views/show/view.dart';

abstract class AppStorage {
  static AppLanguages appLanguages = AppLanguages.AR;

  static bool get isAppLanguageArabic => appLanguages == AppLanguages.AR;

  static void changeLanguage(AppLanguages value) {
    appLanguages = value;
    MagicRouter.navigateTo(HomeView());
  }
}

enum AppLanguages {AR,EN}