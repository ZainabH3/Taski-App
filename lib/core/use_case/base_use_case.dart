import 'package:dartz/dartz.dart';
import '../error_handler/error_handler.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
