import 'package:ninga/core/api/api_consumer.dart';
import 'package:ninga/core/api/end_point.dart';
import 'package:ninga/core/error/exception.dart';
import 'package:ninga/core/sucess/sucess_model.dart';
import 'package:ninga/features/authentication/data/model/user_auth_model.dart';

abstract class BaseAuthRemoteDatasource {
  Future<UserAuthModel> signUp({
    required String email,
    required String phoneNumber,
    required String password,
    required String name,
  });
  Future<UserAuthModel> login({
    required String phoneNumber,
    required String password,
  });
  Future<String> changePassword({
    required String password,
    required String newPassword,
  });
  Future<UserAuthModel> refreshToken({
    required String token,
    required String refreshToken,
  });
  Future<UserAuthModel> resetPassword({
    required String email,
    required String newPassword,
  });
  Future<SucessModel> confirmeEmailByEmailCode({
    required String email,
    required String confirmationCode,
  });
  Future<SucessModel> sentCodeToVerifiyAcount({required String email});
  Future<UserAuthModel> getCurrentUser();
  Future<UserAuthModel> updateUser({
    required String userName,
    required String phoneNumber,
    required String email,
  });
}

class AuthRemoteDatasource extends BaseAuthRemoteDatasource {
  ApiConsumer api;
  AuthRemoteDatasource({required this.api});
  @override
  Future<String> changePassword({
    required String password,
    required String newPassword,
  }) async {
    try {
      dynamic response = await api.post(
        EndPoint.registerUser,
        data: {ApiKey.newPassword: newPassword},
      );
      return response.toString();
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<SucessModel> confirmeEmailByEmailCode({
    required String email,
    required String confirmationCode,
  }) async {
    try {
      dynamic response = await api.post(
        EndPoint.confirmEmail,
        data: {ApiKey.email: email, ApiKey.confimationCode: confirmationCode},
      );
      SucessModel sucessModel = SucessModel.fromJson(response);
      return sucessModel;
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserAuthModel> getCurrentUser() async {
    try {
      dynamic response = await api.post(EndPoint.getCurrentUser);
      UserAuthModel userData = UserAuthModel.fromJson(jsonData: response);
      return userData;
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserAuthModel> login({
    required String phoneNumber,
    required String password,
  }) async {
    try {
      dynamic response = await api.post(
        EndPoint.login,
        data: {ApiKey.phoneNumber: phoneNumber, ApiKey.password: password},
      );
      UserAuthModel userData = UserAuthModel.fromJson(jsonData: response);
      return userData;
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserAuthModel> refreshToken({
    required String token,
    required String refreshToken,
  }) {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<UserAuthModel> resetPassword({
    required String email,
    required String newPassword,
  }) async {
    try {
      dynamic response = await api.post(
        EndPoint.resetPassword,
        data: {ApiKey.email: email, ApiKey.newPassword: newPassword},
      );
      UserAuthModel userData = UserAuthModel.fromJson(jsonData: response);
      return userData;
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<SucessModel> sentCodeToVerifiyAcount({required String email}) async {
    try {
      dynamic response = await api.post(
        EndPoint.sendCodeByEmail,
        data: {ApiKey.email: email},
      );
      return SucessModel.fromJson(response);
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserAuthModel> signUp({
    required String email,
    required String phoneNumber,
    required String password,
    required String name,
  }) async {
    try {
      dynamic response = await api.post(
        EndPoint.registerUser,
        data: {
          ApiKey.email: email,
          ApiKey.phoneNumber: phoneNumber,
          ApiKey.password: password,
          ApiKey.fullName: name,
          ApiKey.type: 1,
        },
      );
      UserAuthModel userData = UserAuthModel.fromJson(jsonData: response);
      return userData;
    } on ServerException catch (e) {
      throw ServerException(errModel: e.errModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<UserAuthModel> updateUser({
    required String userName,
    required String phoneNumber,
    required String email,
  }) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
