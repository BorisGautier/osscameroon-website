// ignore_for_file: file_names
import 'package:mobile/src/models/languages.dart';
import 'package:mobile/src/models/projectQuery.dart' as projectsquery;
import 'package:mobile/src/models/projects.dart' as projects;
import 'package:mobile/src/models/userQuery.dart' as usersquery;
import 'package:mobile/src/models/users.dart';
import 'package:mobile/src/utils/result.dart';

abstract class GithubRepository {
  Future<Result<Languages>> getGithubLanguage();

  Future<Result<projects.Projects>> getProjects({int? count});

  Future<Result<projectsquery.ProjectsQuery>> searchProjects(String query,
      {int? count, int? page});

  Future<Result<projectsquery.ProjectsQuery>> searchProjectsPayload(
      Map<String, dynamic> payload);

  Future<Result<projects.Projects>> getProjectByName(String projectName);

  Future<Result<Users>> getUsers({int? count});

  Future<Result<usersquery.UsersQuery>> searchUsers(String query,
      {int? count, int? page});

  Future<Result<usersquery.UsersQuery>> searchUsersPayload(
      Map<String, dynamic> payload);

  Future<Result<ResultUsers>> getUsersByName(String userName);
}
