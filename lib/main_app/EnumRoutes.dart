import 'package:caja_pandora_final/utils/constants/RoutesApp.dart';

enum RoutesApplication {
  SPLASH,
  MODULES,
}

extension HelperRoutesApplication on RoutesApplication {
  String getRouteString() {
    switch(this) {
      case RoutesApplication.MODULES :
        return RoutesAppConstants.Modules;
      case RoutesApplication.SPLASH:
      default:
        return RoutesAppConstants.Splash;
    }
  }
}