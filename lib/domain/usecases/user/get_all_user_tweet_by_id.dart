import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetAllUserTweetById {
  final UserRepository repository;

  GetAllUserTweetById(this.repository);

  Future<Future<List<Tweet>>> call(int userId) async {
    return repository.getAllUserTweetsById(userId);
  }
}
