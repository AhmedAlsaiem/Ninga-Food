import 'package:dio/dio.dart';
import 'package:ninga/core/helper/cache_helper.dart';

import 'end_point.dart';

class ApiInterceptor extends Interceptor {
  final Dio dio;

  ApiInterceptor({required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = CacheHelper().getData(key: ApiKey.token);
    token!=null? options.headers['Authorization'] = 'Bearer $token':null;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final token = CacheHelper().getData(key: ApiKey.token);

    if (err.response?.statusCode == 401) {
      final refreshToken = CacheHelper().getData(key: ApiKey.refreshToken);
      if (refreshToken == null) {
        handler.reject(err);

        return;
      }

      try {
        final response = await dio.post(
          EndPoint.getRefreshToken,
          data: {
            "refreshToken": refreshToken,
            "token": token,
          },
        );

        final newToken = response.data['token'];
        final newRefreshToken = response.data['refreshToken'];
        CacheHelper().saveData(key: ApiKey.token, value: newToken);
        CacheHelper()
            .saveData(key: ApiKey.refreshToken, value: newRefreshToken);
        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer $newToken';
        final cloneReq = await dio.fetch(options);

        return handler.resolve(cloneReq);
      } catch (e) {
        CacheHelper().removeData(key: ApiKey.token);
        CacheHelper().removeData(key: ApiKey.refreshToken);
        return handler.reject(err);
      }
    }

    return handler.reject(err);
  }
}
