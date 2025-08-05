import 'package:equatable/equatable.dart';

class AuthUserEntitiy extends Equatable {
  final String id;
  final String name;
  final String phoneNumber;
  final String token;
  final String? refreshToken;
  final String? refreshTokenExpirDate;

  const AuthUserEntitiy({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.token,
    required this.refreshToken,
    required this.refreshTokenExpirDate,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    phoneNumber,
    token,
    refreshToken,
    refreshTokenExpirDate,
  ];
}
