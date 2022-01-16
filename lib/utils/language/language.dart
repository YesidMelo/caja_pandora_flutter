import 'languageAvailable/SplanishCO.dart';

part 'languageTags.dart';

abstract class Language {
  String getText({required LanguageTags tag});
}

class LanguageFactory {

  static LanguageFactory _instance = LanguageFactory();
  static LanguageFactory getInstance() => _instance;

  Language _currentLanguage = SpanishCO();
  Language getCurrentLanguage() => _currentLanguage;
}