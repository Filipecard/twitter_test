class User {
  int? id;
  String? name;
  List<User> blockedUsers;

  User({required this.id, required this.name, required this.blockedUsers});
}
