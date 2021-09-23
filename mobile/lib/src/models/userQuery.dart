// ignore_for_file: file_names
class UsersQuery {
  int? code;
  String? status;
  Result? result;

  UsersQuery({code, status, result});

  UsersQuery.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['status'] = status;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  List<Hits>? hits;
  int? offset;
  int? limit;
  int? nbHits;
  bool? exhaustiveNbHits;
  int? processingTimeMs;
  String? query;

  Result(
      {hits, offset, limit, nbHits, exhaustiveNbHits, processingTimeMs, query});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits!.add(Hits.fromJson(v));
      });
    }
    offset = json['offset'];
    limit = json['limit'];
    nbHits = json['nbHits'];
    exhaustiveNbHits = json['exhaustiveNbHits'];
    processingTimeMs = json['processingTimeMs'];
    query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (hits != null) {
      data['hits'] = hits!.map((v) => v.toJson()).toList();
    }
    data['offset'] = offset;
    data['limit'] = limit;
    data['nbHits'] = nbHits;
    data['exhaustiveNbHits'] = exhaustiveNbHits;
    data['processingTimeMs'] = processingTimeMs;
    data['query'] = query;
    return data;
  }
}

class Hits {
  int? id;
  String? avatarUrl;
  String? name;
  int? following;
  String? bio;
  String? nodeId;
  String? followingUrl;
  String? url;
  String? type;
  String? starredUrl;
  int? followers;
  bool? siteAdmin;
  String? location;
  String? twitterUsername;
  String? organizationsUrl;
  int? publicGists;
  String? reposUrl;
  String? email;
  String? company;
  String? receivedEventsUrl;
  String? htmlUrl;
  int? publicRepos;
  String? login;
  String? subscriptionsUrl;
  String? blog;
  String? updatedAt;
  String? gravatarId;
  String? gistsUrl;
  String? createdAt;
  String? eventsUrl;
  bool? hireable;
  String? followersUrl;

  Hits(
      {id,
      avatarUrl,
      name,
      following,
      bio,
      nodeId,
      followingUrl,
      url,
      type,
      starredUrl,
      followers,
      siteAdmin,
      location,
      twitterUsername,
      organizationsUrl,
      publicGists,
      reposUrl,
      email,
      company,
      receivedEventsUrl,
      htmlUrl,
      publicRepos,
      login,
      subscriptionsUrl,
      blog,
      updatedAt,
      gravatarId,
      gistsUrl,
      createdAt,
      eventsUrl,
      hireable,
      followersUrl});

  Hits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatarUrl = json['avatar_url'];
    name = json['name'];
    following = json['following'];
    bio = json['bio'];
    nodeId = json['node_id'];
    followingUrl = json['following_url'];
    url = json['url'];
    type = json['type'];
    starredUrl = json['starred_url'];
    followers = json['followers'];
    siteAdmin = json['site_admin'];
    location = json['location'];
    twitterUsername = json['twitter_username'];
    organizationsUrl = json['organizations_url'];
    publicGists = json['public_gists'];
    reposUrl = json['repos_url'];
    email = json['email'];
    company = json['company'];
    receivedEventsUrl = json['received_events_url'];
    htmlUrl = json['html_url'];
    publicRepos = json['public_repos'];
    login = json['login'];
    subscriptionsUrl = json['subscriptions_url'];
    blog = json['blog'];
    updatedAt = json['updated_at'];
    gravatarId = json['gravatar_id'];
    gistsUrl = json['gists_url'];
    createdAt = json['created_at'];
    eventsUrl = json['events_url'];
    hireable = json['hireable'];
    followersUrl = json['followers_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['avatar_url'] = avatarUrl;
    data['name'] = name;
    data['following'] = following;
    data['bio'] = bio;
    data['node_id'] = nodeId;
    data['following_url'] = followingUrl;
    data['url'] = url;
    data['type'] = type;
    data['starred_url'] = starredUrl;
    data['followers'] = followers;
    data['site_admin'] = siteAdmin;
    data['location'] = location;
    data['twitter_username'] = twitterUsername;
    data['organizations_url'] = organizationsUrl;
    data['public_gists'] = publicGists;
    data['repos_url'] = reposUrl;
    data['email'] = email;
    data['company'] = company;
    data['received_events_url'] = receivedEventsUrl;
    data['html_url'] = htmlUrl;
    data['public_repos'] = publicRepos;
    data['login'] = login;
    data['subscriptions_url'] = subscriptionsUrl;
    data['blog'] = blog;
    data['updated_at'] = updatedAt;
    data['gravatar_id'] = gravatarId;
    data['gists_url'] = gistsUrl;
    data['created_at'] = createdAt;
    data['events_url'] = eventsUrl;
    data['hireable'] = hireable;
    data['followers_url'] = followersUrl;
    return data;
  }
}
