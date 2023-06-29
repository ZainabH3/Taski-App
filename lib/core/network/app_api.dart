import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:taski_app/config/request_constants.dart';
import 'package:taski_app/features/auth/data/response/login_response.dart';
import '../../config/constants.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseurl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;

  @POST(RequestConstants.login)
  Future<LoginResponse> login(
      @Field(ApiConstants.email) String email,
      @Field(ApiConstants.password) String password
      );
}
