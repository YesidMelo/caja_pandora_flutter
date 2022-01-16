import 'package:caja_pandora_final/core_business/core/enums/administrator/functionalities/FunctionalityEnum.dart';

class FunctionalityModel {
  int id;
  String name;
  FunctionalityEnum currentFunctionality = FunctionalityEnum.NONE;

  FunctionalityModel({
    required this.id,
    required this.name
  }) {
    currentFunctionality = FunctionalityEnum.NONE.getFunctionalityEnumById(id: id);
  }
}