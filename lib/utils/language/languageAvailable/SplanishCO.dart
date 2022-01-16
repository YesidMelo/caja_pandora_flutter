import 'package:caja_pandora_final/utils/language/language.dart';

class SpanishCO extends Language {

  @override
  String getText({required LanguageTags tag}) {
    switch(tag){
      case LanguageTags.NAME_APPLICATION:
        return "Caja Pandora Colombia";
      default:
        return "";
    }
  }

}