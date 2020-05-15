import 'failure.dart';
import 'package:either_option/either_option.dart';

abstract class BaseUseCase<P, R> {
  Future<Either<Failure, R>> run(P params);
  void invoke(P params, Function(R) onSuccess, Function(Failure) onFailure) async {
    final answer = await run(params);
    answer.fold((Failure f) => onFailure, (R r) => onSuccess);
  }
}