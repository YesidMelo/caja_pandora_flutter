import 'package:caja_pandora_final/core_business/core/constants/constants_administrator.dart';

enum RolsEnum {
  ADMIN,
  GODS,
  HEFESTO,
  PANDORA
}

extension RolsEnumExtention on RolsEnum {

  int getId() {
    switch(this) {
      case RolsEnum.ADMIN:
        return Constants_Administrator.ID_ROL_ADMIN;
      case RolsEnum.GODS:
        return Constants_Administrator.ID_ROL_GODS;
      case RolsEnum.HEFESTO:
        return Constants_Administrator.ID_ROL_HEFESTO;
      default:
        return Constants_Administrator.ID_ROL_PANDORA;
    }
  }

  RolsEnum getRolById({required int id}) {
    for(RolsEnum currentRol in RolsEnum.values) {
      if(currentRol.getId() != id) continue;
      return currentRol;
    }
    return RolsEnum.PANDORA;
  }

}