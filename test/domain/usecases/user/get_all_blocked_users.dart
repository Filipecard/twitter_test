import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_test/domain/services/users/commands/get_all_blocked_users.dart';
import 'package:twitter_test/domain/services/users/commands/get_all_users.dart';

import 'user_mock.dart';

void main() {
  final UserRepoMock userRepoMock = UserRepoMock();

  test('Deve trazer uma lista de usuários bloqueados', () async {
    var listFake = await GetAllUsersCommand(userRepoMock).call();
    var userListBlock =
        await GetAllBlockedUsersCommand(userRepoMock).call(listFake[0]);
    final result = userListBlock;
    expect(result.length, 1);
  });
}
