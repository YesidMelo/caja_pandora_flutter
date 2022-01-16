part of 'HandlerRoutes.dart';

class HandlerRoutesMobile extends HandlerRoutes {

  HandlerRoutesMobile(BuildContext buildContext) : super(buildContext);

  @override
  Map<String, WidgetBuilder> getRoutes() {
    return  {
      RoutesApplication.ADMINISTRATOR_FUNCTIONALITIES.getRouteString() : (BuildContext context) => FunctionalitiesScreen(),
      RoutesApplication.ADMINISTRATOR_ROLS.getRouteString() : (BuildContext context) => RolsScreen(),
      RoutesApplication.ADMINISTRATOR_USERS.getRouteString() : (BuildContext context) => UsersScreen(),
      RoutesApplication.LOGIN.getRouteString() : (BuildContext context) => LoginScreen(),
      RoutesApplication.MODULES.getRouteString() : (BuildContext context) => ModulesScreen(),
      RoutesApplication.PUBLIC_BUSSINESS.getRouteString() : (BuildContext context) => BussinessScreen(),
      RoutesApplication.PUBLIC_CONTRACTS.getRouteString() : (BuildContext context) => ContractScreen(),
      RoutesApplication.PUBLIC_INVESTIGATIONS.getRouteString() : (BuildContext context) => InvestigationsScreen(),
      RoutesApplication.PUBLIC_LICENCES.getRouteString() : (BuildContext context) => LicencesScreen(),
      RoutesApplication.PUBLIC_PERSONS.getRouteString() : (BuildContext context) => PersonScreen(),
      RoutesApplication.SPLASH.getRouteString() : (BuildContext context) => SplashScreen()
    };
  }

}