import 'package:caja_pandora_final/core_business/core/models/administrator/rols/rols_model.dart';

class UserModel {
  int id;
  String name;
  String lastName;
  List<RolsModel> rols = <RolsModel>[];

  UserModel({
    required this.id,
    required this.name,
    required this.lastName,
    required this.rols
  });
}