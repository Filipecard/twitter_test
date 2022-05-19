import 'package:twitter_test/domain/entities/tweet.dart';

import '../repositories/tweet_repository.dart';

class GetAllTweets {
  late TweetRepository repository;

  GetAllTweets(this.repository);

  Future<List<Tweet>> call() async {
    return await repository.getAllTweets(); // alterar
  }
}
