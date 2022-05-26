import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_test/domain/services/users/commands/get_all_users.dart';

import 'user_mock.dart';

void main() {
  // criar um repo mock
  final UserRepoMock userRepoMock = UserRepoMock();

  test('Deve trazer uma lista de usuários', () async {
    var listUsers = await GetAllUsersCommand(userRepoMock).call();

    final result = listUsers;
    expect(result.length, 5);
  });
}
