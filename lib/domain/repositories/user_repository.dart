import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';

abstract class UserRepository {
  List<User> getAllUsers();

  User? getUserById(int id);

  Future<List<Tweet>> getAllUserTweetsById(int id);

  List<User> getAllUserFollowersById(int id);

  List<User> getAllUserFollowingsById(int id);

  List<User> getAllUserBlockedById(User user);
}
