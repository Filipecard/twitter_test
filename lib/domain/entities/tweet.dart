import 'package:twitter_test/domain/entities/user.dart';

class Tweet {
  User? user;
  int? id;
  String? content;
  List<User>? listUsersLiked;
  List<Tweet>? comment;

  Tweet(
      {required this.user,
      required this.id,
      required this.content,
      this.listUsersLiked,
      this.comment});

  Tweet.fromJson(Map<String, dynamic> json) {
    user = json['tweets']['user'];
    id = json['tweets']['id'];
    content = json['tweets']['content'];
    comment = json['tweets']['comment'];
    listUsersLiked = json['tweets']['list_users_liked'];
  }
}
