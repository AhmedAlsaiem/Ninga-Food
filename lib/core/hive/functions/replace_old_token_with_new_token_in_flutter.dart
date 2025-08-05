import 'package:hive/hive.dart';
import 'package:ninga/core/data/app_state_models.dart';
import 'package:ninga/core/utils/hive_keys.dart';

void replaceOldTokenWithNewToken({required String newToken}) {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);

  AppStateModels? model = appStateBox.getAt(0);
  model!.token = newToken;
  model.save();
}

void replaceOldRefreshTokenTokenWithNewToken({required String newRefrshToken}) {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);

  AppStateModels? model = appStateBox.getAt(0);
  model!.refreshToken = newRefrshToken;
  model.save();
}
