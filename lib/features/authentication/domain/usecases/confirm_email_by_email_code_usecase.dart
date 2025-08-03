import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class ConfirmEmailByEmailCodeUsecase {
  AuthRepo authRepo;
  ConfirmEmailByEmailCodeUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String email,
    required String confirmationCode,
  }) {
    return authRepo.confirmeEmailByEmailCode(
      email: email,
      confirmationCode: confirmationCode,
    );
  }
}
/**
 * login =>ErrorModel ,AuthUserEntity
 * Regisster =>ErrorModel ,AuthUserEntity
 * changepasswrod => ErrorModel ,String
 * refreshToken => ErrorModel ,AuthUserEntity
 * getCurrentUser => ErrorModel ,AuthUserEntity
 * resetPassword => ErrorModel ,AuthUserEntity
 * sendCodeByEmail =>ErrorModel ,SucessModel
 */