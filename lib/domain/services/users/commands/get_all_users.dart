import 'package:twitter_test/domain/repositories/user_repository.dart';

import '../../../entities/user.dart';

class GetAllUsersCommand {
  UserRepository userRepository;

  GetAllUsersCommand(this.userRepository);

  Future<List<User>> call() async {
    return userRepository.getAllUsers();
  }
}
