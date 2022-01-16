import 'package:caja_pandora_final/di/locator.dart';
import 'package:caja_pandora_final/main_app/EnumRoutes.dart';
import 'package:caja_pandora_final/main_app/handler_routes/HandlerRoutes.dart';
import 'package:caja_pandora_final/main_app/handler_routes/HandlerRoutesFactory.dart';
import 'package:caja_pandora_final/ui/bloc/splash/splash_bloc.dart';
import 'package:caja_pandora_final/utils/language/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  LanguageFactory _languageFactory = LanguageFactory.getInstance();
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    HandlerRoutesFactory.initHandlerValues(context);
    final HandlerRoutes handlerRoutes = HandlerRoutesFactory.getInstanceRoutes();

    return MultiBlocProvider(
        providers: [
          BlocProvider(create: ( _ ) => SplashBloc())
        ], 
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: _languageFactory.getCurrentLanguage().getText(tag: LanguageTags.NAME_APPLICATION),
          theme: ThemeData(primarySwatch: Colors.blue,),
          //home: MyHomePage(title: 'Flutter Demo Home Page')
          initialRoute: RoutesApplication.SPLASH.getRouteString(),
          routes: handlerRoutes.getRoutes(),
        )
    );
  }
}

