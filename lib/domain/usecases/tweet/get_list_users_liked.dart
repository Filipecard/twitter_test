import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';

class GetListUsersLiked {
  final TweetRepository repository;

  GetListUsersLiked(this.repository);

  Future<int> call() async {
    return repository.getListUsersLiked(Tweet(
        user: User(id: 1, name: "josefino", blockedUsers: []),
        id: 1,
        content: "Tweet teste 1")); // alterar
  }
}
