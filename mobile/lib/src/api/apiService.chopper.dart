// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<dynamic>> githubLanguage() {
    final $url = 'https://api.osscameroon.com/github/languages';
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubProjects({int? count}) {
    final $url = 'https://api.osscameroon.com/github/projects';
    final $params = <String, dynamic>{'count': count};
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubProjectsSearch(String query,
      {int? count, int? page}) {
    final $url = 'https://api.osscameroon.com/github/projects/search';
    final $params = <String, dynamic>{
      'query': query,
      'count': count,
      'page': page
    };
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubProjectsSearchPayload(
      Map<String, dynamic> body) {
    final $url = 'https://api.osscameroon.com/github/projects/search';
    final $headers = {
      'Accept': 'application/json',
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubProjectByName(String projectName) {
    final $url = 'https://api.osscameroon.com/github/projects/$projectName';
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubuser({int? count}) {
    final $url = 'https://api.osscameroon.com/github/user';
    final $params = <String, dynamic>{'count': count};
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubUsersSearch(String query,
      {int? count, int? page}) {
    final $url = 'https://api.osscameroon.com/github/users/search';
    final $params = <String, dynamic>{
      'query': query,
      'count': count,
      'page': page
    };
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubUsersSearchPayload(
      Map<String, dynamic> body) {
    final $url = 'https://api.osscameroon.com/github/users/search';
    final $headers = {
      'Accept': 'application/json',
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> githubUserByName(String userName) {
    final $url = 'https://api.osscameroon.com/github/users/$userName';
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getTopTweet({int? count}) {
    final $url = 'https://api.osscameroon.com/twitter/top-tweets';
    final $params = <String, dynamic>{'count': count};
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
