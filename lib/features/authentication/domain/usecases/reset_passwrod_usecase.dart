import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class ResetPasswrodUsecase {
  AuthRepo authRepo;
  ResetPasswrodUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String email,
    required String newPassword,
  }) {
    return authRepo.resetPassword(email: email, newPassword: newPassword);
  }
}
