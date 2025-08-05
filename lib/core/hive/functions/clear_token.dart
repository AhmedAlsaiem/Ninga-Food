
  import 'package:ninga/core/hive/functions/get_app_state.dart';

void clearTokens() {
    final model = getAppState();
    model?.token = null;
    model?.refreshToken = null;
    model?.save();
  }