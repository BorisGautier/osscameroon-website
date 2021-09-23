// ignore_for_file: file_names
import 'package:mobile/src/api/github/githubApiService.dart';
import 'package:mobile/src/models/languages.dart';
import 'package:mobile/src/models/projectQuery.dart' as projectsquery;
import 'package:mobile/src/models/projects.dart' as projects;
import 'package:mobile/src/models/userQuery.dart' as usersquery;
import 'package:mobile/src/models/users.dart';
import 'package:mobile/src/utils/networkUtils.dart';
import 'package:mobile/src/utils/result.dart';
import 'package:mobile/src/repositories/github/githubRepository.dart';

class GithubRepositoryImpl implements GithubRepository {
  final NetworkInfo? networkInfo;
  final GithubApiService? githubApiService;

  GithubRepositoryImpl({this.networkInfo, this.githubApiService});

  @override
  Future<Result<Languages>> getGithubLanguage() async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.getGithubLanguage();

        var model = Languages.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<projects.Projects>> getProjectByName(String projectName) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.getProjectByName(projectName);

        var model = projects.Projects.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<projects.Projects>> getProjects({int? count}) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.getProjects(count: count);

        var model = projects.Projects.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<Users>> getUsers({int? count}) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.getUsers(count: count);

        var model = Users.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<ResultUsers>> getUsersByName(String userName) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.getUsersByName(userName);

        var model = ResultUsers.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<projectsquery.ProjectsQuery>> searchProjects(String query,
      {int? count, int? page}) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!
            .searchProjects(query, count: count, page: page);

        var model = projectsquery.ProjectsQuery.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<projectsquery.ProjectsQuery>> searchProjectsPayload(
      Map<String, dynamic> payload) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.searchProjectsPayload(payload);

        var model = projectsquery.ProjectsQuery.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<usersquery.UsersQuery>> searchUsers(String query,
      {int? count, int? page}) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!
            .searchUsers(query, count: count, page: page);

        var model = usersquery.UsersQuery.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }

  @override
  Future<Result<usersquery.UsersQuery>> searchUsersPayload(
      Map<String, dynamic> payload) async {
    bool isConnected = await networkInfo!.isConnected();
    if (isConnected) {
      try {
        final response = await githubApiService!.searchUsersPayload(payload);

        var model = usersquery.UsersQuery.fromJson(response.body);

        return Result(success: model);
      } catch (e) {
        return Result(error: ServerError());
      }
    } else {
      return Result(error: NoInternetError());
    }
  }
}
