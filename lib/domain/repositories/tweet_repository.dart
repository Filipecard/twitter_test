import 'package:dartz/dartz.dart';
import 'package:twitter_test/core/error/failure.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';

abstract class TweetRepository {
  Future<Either<Failure, List<User>>>? listUsersLiked();
  Future<Either<Failure, List<Tweet>>>? listComments();

  getAllTweets() {}
}
