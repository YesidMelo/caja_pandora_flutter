import 'package:caja_pandora_final/core_business/core/enums/administrator/rols/RolsEnums.dart';
import 'package:caja_pandora_final/core_business/core/models/administrator/functionalities/functionality_model.dart';

class RolsModel {
  int id;
  String name;
  List<FunctionalityModel> functionalities = <FunctionalityModel>[];
  RolsEnum currentRolEnum = RolsEnum.PANDORA;


  RolsModel({
    required this.id,
    required this.name,
    required this.functionalities
  }){
    currentRolEnum = RolsEnum.PANDORA.getRolById(id: id);
  }
}