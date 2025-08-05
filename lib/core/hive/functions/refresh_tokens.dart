

  import 'package:dio/dio.dart';
import 'package:ninga/core/api/end_point.dart';

Future<Map<String, String>?> refreshTokens({
    required String? token,
    required String refreshToken,
  }) async {
    Dio dio=Dio();
    final response = await dio.post(
      EndPoint.getRefreshToken,
      data: {"refreshToken": refreshToken, "token": token},
    );

    if (response.statusCode == 200 &&
        response.data[ApiKey.token] != null &&
        response.data[ApiKey.refreshToken] != null) {
      return {
      ApiKey.token: response.data[ApiKey.token],
      ApiKey.refreshToken: response.data[ApiKey.refreshToken],
      };
    }

    return null;
  }
