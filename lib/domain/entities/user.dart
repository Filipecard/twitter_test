class User {
  int? id;
  String? name;

  User({
    required this.id,
    required this.name,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['users']['id'];
    name = json['users']['name'];
  }
}
