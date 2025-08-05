import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/entities/sucess_entity.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo {
  @override
  Future<Either<ErrorModel, String>> changePassword({
    required String password,
    required String newPassword,
  }) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> confirmeEmailByEmailCode({
    required String email,
    required String confirmationCode,
  }) {
    // TODO: implement confirmeEmailByEmailCode
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> login({
    required String phoneNumber,
    required String password,
  }) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> refreshToken({
    required String token,
    required String refreshToken,
  }) {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> resetPassword({
    required String email,
    required String newPassword,
  }) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, SucessEntity>> sentCodeToVerifiyAcount({
    required String email,
  }) {
    // TODO: implement sentCodeToVerifiyAcount
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> signUp({
    required String email,
    required String phoneNumber,
    required String password,
    required String name,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, AuthUserEntitiy>> updateUser({
    required String userName,
    required String phoneNumber,
    required String email,
  }) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
