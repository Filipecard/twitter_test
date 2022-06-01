import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetAllUserFollowersById {
  final UserRepository repository;

  GetAllUserFollowersById(this.repository);

  Future<List<User>> call(int userId) async {
    return repository.getAllUserFollowersById(userId);
  }
}
