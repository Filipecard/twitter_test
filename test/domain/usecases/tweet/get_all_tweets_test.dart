import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/services/tweets/commands/get_all_tweets_command.dart';
import 'package:twitter_test/domain/services/tweets/commands/like_command.dart';

import 'package:twitter_test/main.dart';

class TweetRepo extends Mock implements TweetRepository {}

class TweetRepoMock implements TweetRepository {
  final fakeTweetList = [
    Tweet(user: User(id: 1, name: "Josue"), id: 1, context: "My first tweet"),
    Tweet(
        user: User(id: 2, name: "Maria"),
        id: 2,
        context: "I'm Maria hello!",
        listUsersLiked: [User(id: 1, name: "Josue")])
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
    return Tweet(user: user, id: tweet.id, context: tweet.context);
  }
}

void main() {
  // criar um repo mock
  final tweetRepoMock = TweetRepoMock();

  test('Deve trazer uma lista de tweets', () async {
    var listTweets = await GetAllTweetsCommand(tweetRepoMock).call();

    final result = listTweets;
    expect(result.length, 2);
  });
  // instanciar o service

  // expect(result, t1);
  // expect(result.countLikes, t1.countLikes+1);
  // asserts
}
