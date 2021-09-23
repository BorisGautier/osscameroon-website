// ignore_for_file: file_names

import 'package:chopper/chopper.dart';

abstract class GithubApiService {
  Future<Response> getGithubLanguage();

  Future<Response> getProjects({int? count});

  Future<Response> searchProjects(String query, {int? count, int? page});

  Future<Response> searchProjectsPayload(Map<String, dynamic> payload);

  Future<Response> getProjectByName(String projectName);

  Future<Response> getUsers({int? count});

  Future<Response> searchUsers(String query, {int? count, int? page});

  Future<Response> searchUsersPayload(Map<String, dynamic> payload);

  Future<Response> getUsersByName(String userName);
}
