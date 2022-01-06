import 'package:caja_pandora_final/utils/constants/RoutesApp.dart';

enum RoutesApplication {
  ADMINISTRATOR_FUNCTIONALITIES,
  ADMINISTRATOR_ROLS,
  ADMINISTRATOR_USERS,
  LOGIN,
  MODULES,
  PUBLIC_BUSSINESS,
  PUBLIC_CONTRACTS,
  PUBLIC_INVESTIGATIONS,
  PUBLIC_LICENCES,
  PUBLIC_PERSONS,
  SPLASH,
}

extension HelperRoutesApplication on RoutesApplication {
  String getRouteString() {
    switch(this) {

      case RoutesApplication.ADMINISTRATOR_FUNCTIONALITIES :
        return RoutesAppConstants.AdministratorFunctionalities;
      case RoutesApplication.ADMINISTRATOR_ROLS :
        return RoutesAppConstants.AdministratorUsers;
      case RoutesApplication.ADMINISTRATOR_USERS :
        return RoutesAppConstants.AdministratorUsers;

      case RoutesApplication.LOGIN :
        return RoutesAppConstants.Login;
      case RoutesApplication.MODULES :
        return RoutesAppConstants.Modules;

      case RoutesApplication.PUBLIC_BUSSINESS :
        return RoutesAppConstants.PublicBussiness;
      case RoutesApplication.PUBLIC_CONTRACTS :
        return RoutesAppConstants.PublicContracts;
      case RoutesApplication.PUBLIC_INVESTIGATIONS :
        return RoutesAppConstants.PublicInvestigations;
      case RoutesApplication.PUBLIC_LICENCES :
        return RoutesAppConstants.PublicLicences;
      case RoutesApplication.PUBLIC_PERSONS :
        return RoutesAppConstants.PublicPersons;

      case RoutesApplication.SPLASH:
      default:
        return RoutesAppConstants.Splash;
    }
  }
}