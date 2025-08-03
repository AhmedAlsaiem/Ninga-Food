import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class ChangePasswordUsecase {
  AuthRepo authRepo;
  ChangePasswordUsecase({required this.authRepo});
  Future<Either<ErrorModel, String>> excute({
    required String password,
    required String newPassword,
  }) {
    return authRepo.changePassword(
      password: password,
      newPassword: newPassword,
    );
  }
}
