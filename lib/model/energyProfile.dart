import 'package:floor/floor.dart';

@Entity(tableName: 'ENERGY_PROFILE')
class EnergyProfile {
  @primaryKey
  int? id;

 final String distributionCompanyName;
 final String installationNumber;
 final String clientName;
 final String address;
 final String group;
 final String subGroup;
 final String classDistribution;
 final String subClassDistribution;
 final String supplyType;
 final String tariffModality;

  EnergyProfile({this.id,
    required this.distributionCompanyName,
    required this.installationNumber,
    required this.clientName,
    required this.address,
    required this.group,
    required this.subGroup,
    required this.classDistribution,
    required this.subClassDistribution,
    required this.supplyType,
    required this.tariffModality
  });
}