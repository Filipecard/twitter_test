import 'package:dartz/dartz.dart';
import 'package:twitter_test/domain/entities/user.dart';
import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../repositories/tweet_repository.dart';

class ListUsersLiked {
  late TweetRepository repository;

  ListUsersLiked(this.repository);

  Future<Either<Failure, List<User>>?> call(NoParams noParams) async {
    return await repository.listUsersLiked();
  }
}
