import 'package:twitter_test/domain/entities/tweet.dart';

class Feed {
  int? id;
  List<Tweet>? tweets;

  Feed({
    required this.id,
    required this.tweets,
  });

  Feed.fromJson(Map<String, dynamic> json) {
    id = json['feed']['id'];
    tweets = json['feed']['tweets'];
  }
}
