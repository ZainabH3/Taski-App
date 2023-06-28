import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:taski_app/core/storage/local/app_settings_shared_preferences.dart';

import '../../config/constants.dart';
import '../../config/dependency-injection.dart';

class DioFactory {
  final AppSettingsSharedPreferences _appSettingsPreferences =
      instance<AppSettingsSharedPreferences>();

  Future<Dio> getDio() async {
    Dio dio = Dio();
    Map<String, String> headers = {
      ApiConstants.authorization:
          'Bearer ${_appSettingsPreferences.getToken()}',
    };
    dio.options = BaseOptions(
      baseUrl: ApiConstants.baseurl,
      headers: headers,
      receiveTimeout: const Duration(seconds: ApiConstants.sendTimeOutDuration),
      sendTimeout: const Duration(seconds: ApiConstants.receiveTimeOutDuration),
    );
    InterceptorsWrapper interceptorsWrapper = InterceptorsWrapper(onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
      String token = _appSettingsPreferences.getToken();
      options.headers['Authorization'] = 'Bearer $token';
      return handler.next(options);
    });
    dio.interceptors.add(interceptorsWrapper);
    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          requestHeader: true,
        ),
      );
    }
    return dio;
  }
}
