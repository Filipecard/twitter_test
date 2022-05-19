import '../../../entities/tweet.dart';
import '../../../repositories/tweet_repository.dart';

class Like {
  TweetRepository tweetRepository;

  Like(this.tweetRepository);

  Future<Tweet> call({required int tweetId, required int userId}) async {
    return tweetRepository.like(tweetId, userId);
  }
}
