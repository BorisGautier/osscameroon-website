// ignore_for_file: file_names

import 'package:chopper/chopper.dart';
import 'package:mobile/src/api/apiService.dart';
import 'package:mobile/src/api/twitter/twitterApiService.dart';

class TwitterApiServiceFactory implements TwitterApiService {
  final ApiService? apiService;

  TwitterApiServiceFactory({this.apiService});
  @override
  Future<Response> getTopTweet() async {
    Response response;

    try {
      response = await apiService!.getTopTweet();
    } catch (e) {
      rethrow;
    }
    return response;
  }
}
