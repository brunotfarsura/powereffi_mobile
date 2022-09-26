import 'package:floor/floor.dart';
import 'package:powereffi_mobile/model/energyConsumption.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';

@dao
abstract class EnergyConsumptionDao {
  @Query("SELECT * FROM ENERGY_CONSUMPTION")
  Future<List<EnergyConsumption>> findAll();

  @insert
  Future<int> insertEnergyProfile(EnergyProfile energy);

  @delete
  Future<int> deleteEnergyProfile(EnergyProfile energy);
}