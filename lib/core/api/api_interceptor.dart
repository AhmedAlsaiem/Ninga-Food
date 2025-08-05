import 'package:dio/dio.dart';
import 'package:ninga/core/api/end_point.dart';
import 'package:ninga/core/hive/functions/clear_token.dart';
import 'package:ninga/core/hive/functions/get_app_state.dart';
import 'package:ninga/core/hive/functions/get_current_token.dart';
import 'package:ninga/core/hive/functions/refresh_tokens.dart';
import 'package:ninga/core/hive/functions/update_tokens.dart';

class ApiInterceptor extends Interceptor {
  final Dio dio;

  ApiInterceptor({required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = getCurrentToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final model = getAppState();
      final token = model?.token;
      final refreshToken = model?.refreshToken;

      if (refreshToken == null) {
        handler.reject(err);
        return;
      }

      try {
        final newTokens = await refreshTokens(
          token: token,
          refreshToken: refreshToken,
        );
        if (newTokens == null) {
          clearTokens();
          return handler.reject(err);
        }

        updateTokens(newTokens[ApiKey.token]!, newTokens[ApiKey.refreshToken]!);

        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer ${newTokens[ApiKey.token]}';
        final cloneReq = await dio.fetch(options);
        return handler.resolve(cloneReq);
      } catch (_) {
        clearTokens();
        return handler.reject(err);
      }
    }

    return handler.reject(err);
  }

}
