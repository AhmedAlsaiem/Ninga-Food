import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ninga/app.dart';
import 'package:ninga/core/data/app_state_model.dart';
import 'package:ninga/core/utils/hive_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox(HiveKeys.kBoxName);
  Hive.registerAdapter(AppStateModelAdapter());
  runApp(Ninga());
}
