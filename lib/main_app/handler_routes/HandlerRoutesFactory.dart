
import 'package:caja_pandora_final/main_app/handler_routes/HandlerRoutes.dart';
import 'package:flutter/material.dart';

class HandlerRoutesFactory {

  static HandlerRoutes? _currentHandlerRoutes;

  static HandlerRoutes getInstanceRoutes() => _currentHandlerRoutes!;

  static void initHandlerValues(BuildContext buildContext) {
    _currentHandlerRoutes = HandlerRoutesMobile(buildContext);
  }

}