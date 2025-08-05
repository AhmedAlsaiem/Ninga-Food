import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/data/model/user_auth_model.dart';
import 'package:ninga/features/authentication/domain/entities/sucess_entity.dart';

abstract class AuthRepo {
  Future<UserAuthModel> signUp({
    required String email,
    required String phoneNumber,
    required String password,
    required String name,
  });
  Future<UserAuthModel> login({
    required String phoneNumber,
    required String password,
  });
  Future<Either<ErrorModel, String>> changePassword({
    required String password,
    required String newPassword,
  });
  Future<UserAuthModel> refreshToken({
    required String token,
    required String refreshToken,
  });
  Future<UserAuthModel> resetPassword({
    required String email,
    required String newPassword,
  });
  Future<UserAuthModel> confirmeEmailByEmailCode({
    required String email,
    required String confirmationCode,
  });
  Future<Either<ErrorModel, SucessEntity>> sentCodeToVerifiyAcount({
    required String email,
  });
  Future<UserAuthModel> getCurrentUser();
  Future<UserAuthModel> updateUser({
    required String userName,
    required String phoneNumber,
    required String email,
  });
}
