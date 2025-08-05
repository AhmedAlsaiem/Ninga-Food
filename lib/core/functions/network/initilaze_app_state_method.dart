

import 'package:hive/hive.dart';
import 'package:ninga/core/data/app_state_models.dart';
import 'package:ninga/core/utils/hive_keys.dart';

void initilazeAppSatesMethod() async {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);

  if (appStateBox.isEmpty) {
    await appStateBox.add(appState);
  } else {
 
  }
}
