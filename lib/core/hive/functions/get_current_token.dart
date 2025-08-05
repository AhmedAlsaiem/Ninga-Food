
  import 'package:ninga/core/hive/functions/get_app_state.dart';

String? getCurrentToken() {
    return getAppState()?.token;
  }
