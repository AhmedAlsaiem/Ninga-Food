import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class UpdateUserUsecase {
  AuthRepo authRepo;
  UpdateUserUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String email,
    required String phoneNumber,
    required String userName,

    required String newPassword,
  }) {
    return authRepo.updateUser(
      email: email,
      phoneNumber: phoneNumber,
      userName: userName,
    );
  }
}
