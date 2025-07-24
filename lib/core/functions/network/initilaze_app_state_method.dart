

import 'package:hive/hive.dart';
import 'package:ninga/core/data/app_state_models.dart';
import 'package:ninga/core/utils/hive_keys.dart';

void initilazeAppSatesMethod() async {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);
  print('aaaaaaaaaaaahhhhhhhhhhhhhhhh');

  if (appStateBox.isEmpty) {
    print('dddddddddddddddddddd');
    await appStateBox.add(appState);
  } else {
 
  }
}
