import 'package:twitter_test/domain/entities/user.dart';
import 'package:twitter_test/domain/repositories/user_repository.dart';

class GetAllUserFollowingsById {
  final UserRepository repository;

  GetAllUserFollowingsById(this.repository);

  Future<List<User>> call(int userId) async {
    return repository.getAllUserFollowingsById(userId);
  }
}
