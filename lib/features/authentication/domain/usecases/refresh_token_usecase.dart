import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/auth_user_entitiy.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class RefreshTokenUsecase {
  AuthRepo authRepo;
  RefreshTokenUsecase({required this.authRepo});
  Future<Either<ErrorModel, AuthUserEntitiy>> excute({
    required String token,
    required String refreshToken,
  }) {
    return authRepo.refreshToken(token: token, refreshToken: refreshToken);
  }
}
