import 'package:twitter_test/domain/entities/tweet.dart';
import 'package:twitter_test/domain/entities/user.dart';

abstract class TweetRepository {
  int getListUsersLiked(Tweet tweet);

  Tweet like(Tweet tweet, User user);

  Future<List<Tweet>> getAllTweets();
  
}
