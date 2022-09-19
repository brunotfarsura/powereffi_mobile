import 'package:floor/floor.dart';

@entity
class Person {
  @primaryKey
  int? id;

  String name;
  String email;
  String phoneNumber;
  String documentNumber;

  Person({this.id, required this.name, required this.email, required this.phoneNumber, required this.documentNumber});
}