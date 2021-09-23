// ignore_for_file: file_names
import 'package:mobile/src/models/twitter.dart' as twitter;
import 'package:mobile/src/utils/result.dart';

abstract class TwitterRepository {
  Future<Result<twitter.Twitter>> getTopTweet();
}
