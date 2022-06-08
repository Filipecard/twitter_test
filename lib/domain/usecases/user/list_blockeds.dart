import 'package:dartz/dartz.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';
import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/user.dart';

class ListBlockeds {
  late UserRepository repository;

  ListBlockeds(this.repository);

  Future<Either<Failure, List<User>>?> call(NoParams noParams) async {
    return await repository.listBlockeds();
  }
}
