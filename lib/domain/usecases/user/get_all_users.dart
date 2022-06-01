import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetAllUsers {
  final UserRepository repository;

  GetAllUsers(this.repository);

  Future<List<User>> call() async {
    return repository.getAllUsers();
  }
}
