// ignore_for_file: file_names

import 'package:chopper/chopper.dart';
import 'package:mobile/src/api/apiService.dart';
import 'package:mobile/src/api/github/githubApiService.dart';

class GithubApiServiceFactory implements GithubApiService {
  final ApiService? apiService;

  GithubApiServiceFactory({this.apiService});

  @override
  Future<Response> getGithubLanguage() async {
    Response response;

    try {
      response = await apiService!.githubLanguage();
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> getProjectByName(String projectName) async {
    Response response;

    try {
      response = await apiService!.githubProjectByName(projectName);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> getProjects({int? count}) async {
    Response response;

    try {
      response = await apiService!.githubProjects(count: count);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> getUsers({int? count}) async {
    Response response;

    try {
      response = await apiService!.githubuser(count: count);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> getUsersByName(String userName) async {
    Response response;

    try {
      response = await apiService!.githubUserByName(userName);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> searchProjects(String query, {int? count, int? page}) async {
    Response response;

    try {
      response = await apiService!
          .githubProjectsSearch(query, count: count, page: page);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> searchProjectsPayload(Map<String, dynamic> payload) async {
    Response response;

    try {
      response = await apiService!.githubProjectsSearchPayload(payload);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> searchUsers(String query, {int? count, int? page}) async {
    Response response;

    try {
      response =
          await apiService!.githubUsersSearch(query, count: count, page: page);
    } catch (e) {
      rethrow;
    }
    return response;
  }

  @override
  Future<Response> searchUsersPayload(Map<String, dynamic> payload) async {
    Response response;

    try {
      response = await apiService!.githubUsersSearchPayload(payload);
    } catch (e) {
      rethrow;
    }
    return response;
  }
}
