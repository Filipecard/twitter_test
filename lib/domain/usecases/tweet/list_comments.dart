import 'package:dartz/dartz.dart';
import 'package:twitter_test/core/usecases/usecases.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import '../../../core/error/failure.dart';
import '../../repositories/tweet_repository.dart';

class ListComments {
  late TweetRepository repository;

  ListComments(this.repository);

  Future<Either<Failure, List<Tweet>>?> call(NoParams noParams) async {
    return await repository.listComments();
  }
}
