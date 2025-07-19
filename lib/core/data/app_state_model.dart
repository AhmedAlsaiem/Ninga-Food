import 'package:hive/hive.dart';
part 'app_state_model.g.dart';

@HiveType(typeId: 0)
class AppStateModel extends HiveObject {
  @HiveField(0)
  String token;

  @HiveField(1)
  String profileImagePath; 

  @HiveField(2)
  String email;

  @HiveField(3)
  String themeMode;

  @HiveField(4)
  String language;

  @HiveField(5)
  bool isLoggedIn;

  @HiveField(6)
  bool onboardingCompleted;

  @HiveField(7)
  bool isConnected;

  @HiveField(8)
  int notificationsCount;

  AppStateModel({
    required this.token,
    required this.profileImagePath,
    required this.email,
    required this.themeMode,
    required this.language,
    required this.isLoggedIn,
    required this.onboardingCompleted,
    required this.isConnected,
    required this.notificationsCount,
  });
}
