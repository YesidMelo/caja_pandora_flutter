import 'package:caja_pandora_final/main_app/mainApp.dart';

part of 'HandlerRoutes.dart';

class HandlerRoutesWeb extends HandlerRoutes {

  HandlerRoutesWeb(BuildContext buildContext) : super(buildContext);

  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {
      RoutesApplication.SPLASH.getRouteString() : (BuildContext context) => SplashScreen()
    };
  }

}