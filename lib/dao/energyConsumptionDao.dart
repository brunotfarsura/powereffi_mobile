import 'package:floor/floor.dart';
import 'package:powereffi_mobile/model/energy.dart';

@dao
abstract class PersonDataDao {
  @Query("SELECT * FROM Energy")
  Future<List<Energy>> findAll();

  @insert
  Future<int> insertPerson(Energy energy);

  @delete
  Future<int> deletePerson(Energy energy);
}