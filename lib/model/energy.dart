import 'package:floor/floor.dart';

@entity
class Energy {
  @primaryKey
  int? id;

  String distributionCompanyName;
  String installationNumber;
  String clientName;
  String address;
  String group;
  String subGroup;
  String classDistribution;
  String subClassDistribution;
  String supplyType;
  String tariffModality;
  List<String>? allEnergyConsumption;

  Energy({this.id,
    required this.distributionCompanyName,
    required this.installationNumber,
    required this.clientName,
    required this.address,
    required this.group,
    required this.subGroup,
    required this.classDistribution,
    required this.subClassDistribution,
    required this.supplyType,
    required this.tariffModality,
    //required this.allEnergyConsumption
    this.allEnergyConsumption
  });
}