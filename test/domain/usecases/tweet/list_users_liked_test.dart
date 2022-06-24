import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter_test/core/usecases/usecases.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/usecases/tweet/list_users_liked.dart';
import 'tweet_mock.dart';

void main() {
  TweetRepoMock mockTweetRepository = TweetRepoMock();

  ListUsersLiked usecase = ListUsersLiked(mockTweetRepository);

  List<User> tListUsersLike = [
    User(id: 1, name: 'Mario', blockedUsers: []),
    User(id: 2, name: 'Josué', blockedUsers: []),
    User(id: 3, name: 'Ana', blockedUsers: []),
  ];

  test('Deve trazer uma lista de usuário', () async {
    when(mockTweetRepository.listUsersLiked())
        .thenAnswer((_) async => Right(tListUsersLike));

    var result = await usecase(NoParams());
    expect(result, Right(tListUsersLike));
    verify(mockTweetRepository.listUsersLiked());
    verifyNoMoreInteractions(mockTweetRepository);
  });
}
