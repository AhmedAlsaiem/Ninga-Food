import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/core/sucess/sucess_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/entities/sucess_entity.dart';

abstract class AuthRepo {
  Future<Either<ErrorModel, AuthUserEntitiy>> signUp({
    required String email,
    required String phoneNumber,
    required String password,
    required String name,
  });
  Future<Either<ErrorModel, AuthUserEntitiy>> login({
    required String phoneNumber,
    required String password,
  });
  Future<Either<ErrorModel, String>> changePassword({
    required String password,
    required String newPassword,
  });
  Future<Either<ErrorModel, AuthUserEntitiy>> refreshToken({
    required String token,
    required String refreshToken,
  });
  Future<Either<ErrorModel, AuthUserEntitiy>> resetPassword({
    required String email,
    required String newPassword,
  });
  Future<Either<ErrorModel, SucessModel>> confirmeEmailByEmailCode({
    required String email,
    required String confirmationCode,
  });
  Future<Either<ErrorModel, SucessEntity>> sentCodeToVerifiyAcount({
    required String email,
  });
  Future<Either<ErrorModel, AuthUserEntitiy>> getCurrentUser();
  Future<Either<ErrorModel, AuthUserEntitiy>> updateUser({
    required String userName,
    required String phoneNumber,
    required String email,
  });
}
