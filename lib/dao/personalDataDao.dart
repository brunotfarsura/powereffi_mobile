import 'package:floor/floor.dart';

import '../model/person.dart';

@dao
abstract class PersonDataDao {

  @Query("SELECT * FROM Person")
  Future<List<Person>> findAll();

  @insert
  Future<int> insertPerson(Person person);

  @delete
  Future<int> deletePerson(Person person);
}