import 'package:caja_pandora_final/ui/bloc/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_home_page.dart';
import 'di/locator.dart';

void main() {
  initLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: ( _ ) => SplashBloc())
        ], 
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue,),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        )
    );
  }
}

