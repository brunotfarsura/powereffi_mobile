import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';

@Entity(tableName: 'ENERGY_CONSUMPTION',
        foreignKeys: [ ForeignKey(
            childColumns: ['profile_id'],
            parentColumns: ['id'],
            entity: EnergyProfile)
        ]
      )
class EnergyConsumption {
  @primaryKey
  int? id;

  @ColumnInfo(name: 'profile_id')
  final int profileId;

  final int month;
  final int year;
  final int energyConsumption;

  EnergyConsumption({this.id,
  required this.profileId,
  required this.month,
  required this.year,
  required this.energyConsumption});
}