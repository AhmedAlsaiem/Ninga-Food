import 'package:hive/hive.dart';
import 'package:ninga/core/data/app_state_models.dart' show AppStateModels;
import 'package:ninga/core/utils/hive_keys.dart';

void changeOnboardingState() {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);

  AppStateModels? model = appStateBox.getAt(0);
  model!.onboardingCompleted = true;
  model.save();
}
