import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';

class TweetRepoMock implements TweetRepository {
  final fakeTweetList = [
    Tweet(
        user: User(id: 1, name: "joão", blockedUsers: []),
        id: 1,
        content: "My first tweet"),
    Tweet(
        user: User(id: 2, name: "Filipe", blockedUsers: []),
        id: 2,
        content: "I'm Maria hello!",
        listUsersLiked: [User(id: 1, name: "Josue", blockedUsers: [])])
  ];

  @override
  Future<List<Tweet>> getAllTweets() async {
    return fakeTweetList;
  }

  @override
  int getListUsersLiked(Tweet tweet) {
    return tweet.listUsersLiked!.length;
  }

  @override
  Tweet like(Tweet tweet, User user) {
    return Tweet(user: user, id: tweet.id, content: tweet.content);
  }
}
