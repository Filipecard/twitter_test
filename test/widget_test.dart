// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/tweet_repository.dart';
import 'package:twitter_test/domain/services/tweets/commands/like_command.dart';

import 'package:twitter_test/main.dart';

class TweetRepo extends Mock implements TweetRepository {}

void main() {
  final t1 = Tweet(
      user: User(id: 1, name: "Josue", blockedUsers: []),
      id: 1,
      content: "My first tweet");

  test('Test like tweet', () {
    // criar um repo mock
    final tweetRepo = TweetRepo();

    when(() => tweetRepo.like(any(), any())).thenReturn(t1);
    // instanciar o service
    var likeCommand = Like(tweetRepo);

    final result = likeCommand;

    // expect(result, t1);
    // expect(result.countLikes, t1.countLikes+1);
    // asserts
  });
}
