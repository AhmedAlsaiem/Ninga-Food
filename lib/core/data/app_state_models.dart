import 'package:hive/hive.dart';
part 'app_state_models.g.dart';

@HiveType(typeId: 0)
class AppStateModels extends HiveObject {
  @HiveField(0)
  String? token;

  @HiveField(1)
  String? profileImagePath;

  @HiveField(2)
  int? notificationsCount;

  @HiveField(3)
  String? themeMode;

  @HiveField(4)
  String? language;

  @HiveField(5)
  bool? isLoggedIn;

  @HiveField(6)
  bool? onboardingCompleted;

  @HiveField(7)
  bool? isConnected;
  @HiveField(8)
  String? refreshToken;

  AppStateModels({
    this.token,
    this.profileImagePath,
    this.themeMode,
    this.language,
    this.isLoggedIn,
    this.onboardingCompleted,
    this.isConnected,
    this.notificationsCount,
    this.refreshToken,
  });
}

AppStateModels appState = AppStateModels(
  token: null,
  profileImagePath: null,
  themeMode: null,
  language: null,
  isLoggedIn: null,
  onboardingCompleted: false,
  isConnected: true,
  notificationsCount: 0,
  refreshToken: null,
);
