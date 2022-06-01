import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetUserById {
  final UserRepository repository;

  GetUserById(this.repository);

  Future<User?> call(int userId) async {
    return repository.getUserById(userId);
  }
}
