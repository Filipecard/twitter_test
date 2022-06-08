import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter_test/core/usecases/usecases.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/usecases/tweet/list_comments.dart';
import 'tweet_mock.dart';

void main() {
  TweetRepoMock mockTweetRepository = TweetRepoMock();

  ListComments usecase = ListComments(mockTweetRepository);

  List<Tweet> tListComments = [
    Tweet(
      user: User(id: 2, name: 'Josué', blockedUsers: []),
      id: 1,
      content: 'Adorei sua postagem',
    )
  ];

  test('Deve trazer lista de comentarios do tweet', () async {
    when(mockTweetRepository.listComments())
        .thenAnswer((_) async => Right(tListComments));

    var result = await usecase(NoParams());
    expect(result, Right(tListComments));
    verify(mockTweetRepository.listComments());
    verifyNoMoreInteractions(mockTweetRepository);
  });
}
