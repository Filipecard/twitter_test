import 'package:mocktail/mocktail.dart';

import '../../../entities/user.dart';
import '../../../repositories/user_repository.dart';

class GetAllBlockedUsersCommand {
  UserRepository userRepository;

  GetAllBlockedUsersCommand(this.userRepository);

  Future<List<User>> call(User user) async {
    return userRepository.getAllUserBlockedById(user);
  }
}
