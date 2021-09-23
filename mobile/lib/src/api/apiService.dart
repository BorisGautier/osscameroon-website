// ignore_for_file: file_names
import 'package:chopper/chopper.dart';
import 'package:mobile/src/utils/config.dart';

part 'apiService.chopper.dart';

@ChopperApi(baseUrl: baseUrl)
abstract class ApiService extends ChopperService {
  static ApiService create([ChopperClient? client]) => _$ApiService(client);

  @Get(path: '/github/languages', headers: {'Accept': 'application/json'})
  Future<Response> githubLanguage();

  @Get(path: '/github/projects', headers: {'Accept': 'application/json'})
  Future<Response> githubProjects({@Query('count') int? count});

  @Get(path: '/github/projects/search', headers: {'Accept': 'application/json'})
  Future<Response> githubProjectsSearch(@Query('query') String query,
      {@Query('count') int? count, @Query('page') int? page});

  @Post(
      path: '/github/projects/search', headers: {'Accept': 'application/json'})
  Future<Response> githubProjectsSearchPayload(
      @Body() Map<String, dynamic> body);

  @Get(
      path: '/github/projects/{project_name}',
      headers: {'Accept': 'application/json'})
  Future<Response> githubProjectByName(
      @Path('project_name') String projectName);

  @Get(path: '/github/user', headers: {'Accept': 'application/json'})
  Future<Response> githubuser({@Query('count') int? count});

  @Get(path: '/github/users/search', headers: {'Accept': 'application/json'})
  Future<Response> githubUsersSearch(@Query('query') String query,
      {@Query('count') int? count, @Query('page') int? page});

  @Post(path: '/github/users/search', headers: {'Accept': 'application/json'})
  Future<Response> githubUsersSearchPayload(@Body() Map<String, dynamic> body);

  @Get(
      path: '/github/users/{user_name}',
      headers: {'Accept': 'application/json'})
  Future<Response> githubUserByName(@Path('user_name') String userName);

  @Get(path: '/twitter/top-tweets', headers: {'Accept': 'application/json'})
  Future<Response> getTopTweet({@Query('count') int? count});
}
