import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class LoginUsecase {
  AuthRepo authRepo;
  LoginUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String password,
    required String newPassword,
  }) {
    return authRepo.login(password: password, phoneNumber: newPassword);
  }
}
