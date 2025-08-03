import 'package:dartz/dartz.dart';
import 'package:ninga/core/error/error_model.dart';
import 'package:ninga/features/authentication/domain/entities/sucess_entity.dart';
import 'package:ninga/features/authentication/domain/repo/auth_repo.dart';

class SentCodeToVerifiyAccountUsecase {
  AuthRepo authRepo;
  SentCodeToVerifiyAccountUsecase({required this.authRepo});
  Future<Either<ErrorModel, SucessEntity>> excute({
    required String email,
  }) {
    return authRepo.sentCodeToVerifiyAcount(email: email);
  }
}
