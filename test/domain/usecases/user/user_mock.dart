import 'package:mocktail/mocktail.dart';
import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class UserRepoMock implements UserRepository {
  final fakeUserList = [
    User(id: 1, name: "João", blockedUsers: [
      User(id: 2, name: "Filipe", blockedUsers: []),
    ]),
    User(id: 2, name: "Filipe", blockedUsers: []),
    User(id: 3, name: "Icaro", blockedUsers: []),
    User(id: 4, name: "Rogerinho", blockedUsers: []),
    User(id: 5, name: "Coquinha de 2 Litros", blockedUsers: [])
  ];

  @override
  List<User> getAllUserBlockedById(User userParam) {
    List<User> ListBlock = [];
    fakeUserList.forEach((user) {
      if (user.id == userParam.id) ListBlock = user.blockedUsers;
    });

    return ListBlock;
  }

  @override
  List<User> getAllUserFollowersById(int id) {
    // TODO: implement getAllUserFollowersById
    throw UnimplementedError();
  }

  @override
  List<User> getAllUserFollowingsById(int id) {
    // TODO: implement getAllUserFollowingsById
    throw UnimplementedError();
  }

  @override
  Future<List<Tweet>> getAllUserTweetsById(int id) {
    // TODO: implement getAllUserTweetsById
    throw UnimplementedError();
  }

  @override
  List<User> getAllUsers() {
    return this.fakeUserList;
  }

  @override
  User? getUserById(int userId) {
    User? returnedUser;
    fakeUserList.forEach((user) {
      if (user.id == userId) returnedUser = user;
    });
    return returnedUser;
  }
}
