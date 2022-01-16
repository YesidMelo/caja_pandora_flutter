import 'package:caja_pandora_final/core_business/core/constants/constants_administrator.dart';

enum FunctionalityEnum {
  ADD_NEW,
  DELETE_NEW,
  DISABLE_USER,
  ENABLE_USER,
  NONE,
  UPDATE_NEW,
}

extension FunctionalityEnumExtention on FunctionalityEnum {

  FunctionalityEnum getFunctionalityEnumById({required int id}) {
    for(FunctionalityEnum currentValue in FunctionalityEnum.values) {
      if(id != currentValue.getId()) continue;
      return currentValue;
    }
    return FunctionalityEnum.NONE;
  }

  int getId() {
    switch(this) {
      case FunctionalityEnum.ADD_NEW:
        return Constants_Administrator.ID_FUNCTIONALITY_ADD_NEW;
      case FunctionalityEnum.DELETE_NEW:
        return Constants_Administrator.ID_FUNCTIONALITY_DELETE_NEW;
      case FunctionalityEnum.DISABLE_USER:
        return Constants_Administrator.ID_FUNCTIONALITY_DISABLE_USER;
      case FunctionalityEnum.ENABLE_USER:
        return Constants_Administrator.ID_FUNCTIONALITY_ENABLE_USER;
      case FunctionalityEnum.UPDATE_NEW:
        return Constants_Administrator.ID_FUNCTIONALITY_UPDATE_NEW;
      default:
        return Constants_Administrator.ID_FUNCTIONALITY_NONE;
    }
  }
}