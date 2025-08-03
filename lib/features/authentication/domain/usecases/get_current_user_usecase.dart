import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class GetCurrentUserUsecase {
  AuthRepo authRepo;
  GetCurrentUserUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute() {
    return authRepo.getCurrentUser();
  }
}
