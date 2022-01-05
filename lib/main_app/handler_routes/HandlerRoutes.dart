import 'dart:io';

import 'package:caja_pandora_final/main_app/EnumRoutes.dart';
import 'package:caja_pandora_final/main_app/mainApp.dart';
import 'package:caja_pandora_final/ui/screens/modules/modules_screen.dart';
import 'package:caja_pandora_final/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'HandlerRoutesMobile.dart';
part 'HandlerRoutesWeb.dart';

abstract class HandlerRoutes {
  @protected
  BuildContext buildContext;

  HandlerRoutes(
    this.buildContext
  );

  void navigateTo({required RoutesApplication routesApplication}) {
  }

  Map<String, WidgetBuilder> getRoutes();

}




