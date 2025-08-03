import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class SignupUsecase {
  AuthRepo authRepo;
  SignupUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String email,
    required String password,
    required String phoneNumber,
    required String name,

    required String newPassword,
  }) {
    return authRepo.signUp(
      email: email,
      phoneNumber: phoneNumber,
      password: password,
      name: name,
    );
  }
}
