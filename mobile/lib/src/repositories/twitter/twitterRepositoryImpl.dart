// ignore_for_file: file_names
import 'package:mobile/src/api/twitter/twitterApiService.dart';
import 'package:mobile/src/models/twitter.dart' as twitter;
import 'package:mobile/src/repositories/twitter/twitterRepository.dart';
import 'package:mobile/src/utils/networkUtils.dart';
import 'package:mobile/src/utils/result.dart';

class TwitterRepositoryImpl implements TwitterRepository {
  final NetworkInfo? networkInfo;
  final TwitterApiService? twitterApiService;

  TwitterRepositoryImpl({this.networkInfo, this.twitterApiService});

  @override
  Future<Result<twitter.Twitter>> getTopTweet() async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await twitterApiService!.getTopTweet();

        var model = twitter.Twitter.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }
}
