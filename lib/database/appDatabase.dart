import 'dart:async';

import 'package:floor/floor.dart';
import 'package:powereffi_mobile/dao/energyConsumptionDao.dart';
import 'package:powereffi_mobile/dao/energyProfileDao.dart';
import 'package:powereffi_mobile/dao/personDataDao.dart';
import 'package:powereffi_mobile/model/energyConsumption.dart';
import 'package:powereffi_mobile/model/energyProfile.dart';
import 'package:powereffi_mobile/model/person.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'appDatabase.g.dart';

@Database(version: 1, entities: [EnergyConsumption, EnergyProfile, Person])
abstract class AppDatabase extends FloorDatabase{
  EnergyConsumptionDao get energyConsumptionDao;
  EnergyProfileDao get energyProfileDao;
  PersonDataDao get personalDataDao;
}