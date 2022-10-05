import 'package:floor/floor.dart';
import 'package:powereffi_mobile/model/energyConsumption.dart';

@dao
abstract class EnergyConsumptionDao {
  @Query("SELECT * FROM ENERGY_CONSUMPTION")
  Future<List<EnergyConsumption>> findAll();

  @insert
  Future<int> insertEnergyConsumption(EnergyConsumption energyConsumption);

  @delete
  Future<int> deleteEnergyConsumption(EnergyConsumption energyConsumption);
} 