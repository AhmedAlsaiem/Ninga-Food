
  import 'package:hive/hive.dart';
import 'package:ninga/core/data/app_state_models.dart';
import 'package:ninga/core/utils/hive_keys.dart';

AppStateModels? getAppState() {
    final box = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);
    return box.getAt(0);
  }