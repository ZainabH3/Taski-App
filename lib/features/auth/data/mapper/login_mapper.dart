import 'package:taski_app/core/extensions/extensions.dart';
import 'package:taski_app/features/auth/data/response/login_response.dart';
import 'package:taski_app/features/auth/domain/model/login.dart';

extension LoginMapper on LoginResponse{
  toDomain() {
    return Login(token: token.onNull());
  }
}

