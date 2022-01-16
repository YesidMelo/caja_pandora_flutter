import 'package:caja_pandora_final/utils/language/language.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  LanguageFactory _languageFactory = LanguageFactory.getInstance();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_languageFactory.getCurrentLanguage().getText(tag: LanguageTags.NAME_APPLICATION)),
      ),
      body: SafeArea(
        child: Text("Hola desde el splash"),
      ),
    );
  }

}