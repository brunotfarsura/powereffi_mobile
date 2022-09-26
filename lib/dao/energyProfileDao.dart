import 'package:floor/floor.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';

@dao
abstract class EnergyProfileDao {
  @Query("SELECT * FROM ENERGY_PROFILE where installationNumber = :installationNumber")
  Future<EnergyProfile> findEnergyProfile(String installationNumber);

  @insert
  Future<int> insertEnergyProfile(EnergyProfile energy);

  @delete
  Future<int> deleteEnergyProfile(EnergyProfile energy);
}