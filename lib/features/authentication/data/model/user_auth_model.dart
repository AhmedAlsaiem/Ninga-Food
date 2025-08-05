import 'package:ninga/core/api/end_point.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';

class UserAuthModel extends AuthUserEntitiy {
  const UserAuthModel({
    required super.id,
    required super.name,
    required super.phoneNumber,
    required super.token,
    required super.refreshToken,
    required super.refreshTokenExpirDate,
  });
  factory UserAuthModel.fromJson({required Map<String, dynamic> jsonData}) {
    return UserAuthModel(
      id: jsonData[ApiKey.id],
      name: jsonData[ApiKey.fullName],
      phoneNumber: jsonData[ApiKey.phoneNumber],
      token: jsonData[ApiKey.token],
      refreshToken: jsonData[ApiKey.refreshToken],
      refreshTokenExpirDate: jsonData[ApiKey.refreshTokenExpirationDate],
    );
  }
}
