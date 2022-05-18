import 'package:twitter_test/domain/entities/tweet.dart';

abstract class TweetRepository {
  int getListUsersLiked(Tweet tweet);
}
