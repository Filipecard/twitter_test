import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/services/tweets/commands/get_all_tweets_command.dart';
import 'package:twitter_test/domain/services/tweets/commands/like_command.dart';

import 'package:twitter_test/main.dart';

import 'tweet_mock.dart';

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
