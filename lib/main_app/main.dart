import 'package:caja_pandora_final/main_app/EnumRoutes.dart';
import 'package:caja_pandora_final/main_app/handler_routes/HandlerRoutes.dart';
import 'package:caja_pandora_final/main_app/handler_routes/HandlerRoutesFactory.dart';
import 'package:caja_pandora_final/ui/bloc/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../my_home_page.dart';
import '../di/locator.dart';

void main() {
  initLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue,),
          //home: MyHomePage(title: 'Flutter Demo Home Page')
          initialRoute: RoutesApplication.MODULES.getRouteString(),
          routes: handlerRoutes.getRoutes(),
        )
    );
  }
}

