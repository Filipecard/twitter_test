import '../../../entities/tweet.dart';
import '../../../entities/user.dart';
import '../../../repositories/tweet_repository.dart';

class Like {
  TweetRepository tweetRepository;

  Like(this.tweetRepository);

  Future<Tweet> call({required Tweet tweet, required User user}) async {
    return tweetRepository.like(tweet, user);
  }
}
