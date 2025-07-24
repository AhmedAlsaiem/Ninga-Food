import 'package:hive/hive.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/data/app_state_models.dart' show AppStateModels;
import 'package:ninga/core/utils/hive_keys.dart';

String initalRouteMethod() {
  var appStateBox = Hive.box<AppStateModels>(HiveKeys.kBoxAppStateName);

  AppStateModels? model = appStateBox.getAt(0);
  if (model != null) {
    if (model.onboardingCompleted == true) {
      if (model.token == null) {
        return AppRoutes.loginView;
      } else {
        return AppRoutes.home;
      }
    } else {
      return AppRoutes.onboardingView;
    }
  } else {
    return '';
  }
}
