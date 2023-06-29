import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../../data/request/login_request.dart';
import '../model/login.dart';
import '../repository/login_repository.dart';

class LoginUseCaseInput {
  String email;
  String password;

  LoginUseCaseInput({
    required this.email,
    required this.password,
  });
}

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Login> {
  final LoginRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<Either<Failure, Login>> execute(LoginUseCaseInput input) async =>
      await _loginRepository.login(
        LoginRequest(
          password: input.password,
          email: input.email,
        ),
      );
}
