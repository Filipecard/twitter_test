import '../../../entities/tweet.dart';
import '../../../entities/user.dart';
import '../../../repositories/tweet_repository.dart';

class GetAllTweetsCommand {
  TweetRepository tweetRepository;

  GetAllTweetsCommand(this.tweetRepository);

  Future<List<Tweet>> call() async {
    return tweetRepository.getAllTweets();
  }
}
