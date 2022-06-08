import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter_test/core/usecases/usecases.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/usecases/user/list_blockeds.dart';

import 'user_mock.dart';

void main() {
  UserRepoMock mockUserRepository = UserRepoMock();

  ListBlockeds usecase = ListBlockeds(mockUserRepository);

  List<User> tListUser = [];

  test('Deve trazer lista de usuários vazia', () async {
    when(mockUserRepository.listBlockeds())
        .thenAnswer((_) async => Right(tListUser));

    var result = await usecase(NoParams());
    expect(result, Right(tListUser));
    verify(mockUserRepository.listBlockeds());
    verifyNoMoreInteractions(mockUserRepository);
  });
}
