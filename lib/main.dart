import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ninga/app.dart';
import 'package:ninga/core/data/app_state_models.dart';
import 'package:ninga/core/functions/network/initilaze_app_state_method.dart' show initilazeAppSatesMethod;
import 'package:ninga/core/utils/hive_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(AppStateModelsAdapter());

  await Hive.openBox<AppStateModels>(HiveKeys.kBoxAppStateName);
  initilazeAppSatesMethod();
  runApp(Ninga());
}