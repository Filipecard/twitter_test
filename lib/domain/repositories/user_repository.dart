import 'package:dartz/dartz.dart';
import 'package:twitter_test/domain/entities/user.dart';
import '../../core/error/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>>? listBlockeds();

  // Future<List<Tweet>> getAllUserTweetsById(int id);

  // List<User> getAllUserFollowersById(int id);

  // List<User> getAllUserFollowingsById(int id);

  // List<User> getAllUserBlockedById(User user);
}
