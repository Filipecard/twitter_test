import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params params);
}

class Params extends Equatable {
  final String cardName;

  const Params({required this.cardName});

  @override
  List<Object> get props => [cardName];
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
