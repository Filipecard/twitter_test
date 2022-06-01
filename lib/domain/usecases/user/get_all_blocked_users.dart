import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetAllBlockedUsers {
  final UserRepository repository;

  GetAllBlockedUsers(this.repository);

  Future<List<User>> call(User user) async {
    return repository.getAllUserBlockedById(user);
  }
}
