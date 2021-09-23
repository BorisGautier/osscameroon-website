class Users {
  int? code;
  String? status;
  List<ResultUsers>? result;

  Users({code, status, result});

  Users.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['result'] != null) {
      result = <ResultUsers>[];
      json['result'].forEach((v) {
        result!.add(ResultUsers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['status'] = status;
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultUsers {
  String? starredUrl;
  String? name;
  String? reposUrl;
  String? twitterUsername;
  String? url;
  String? gravatarId;
  int? following;
  String? subscriptionsUrl;
  String? followersUrl;
  bool? siteAdmin;
  String? blog;
  int? publicRepos;
  String? updatedAt;
  int? followers;
  bool? hireable;
  String? followingUrl;
  String? email;
  String? company;
  String? organizationsUrl;
  String? receivedEventsUrl;
  String? gistsUrl;
  String? eventsUrl;
  String? location;
  String? login;
  int? id;
  int? publicGists;
  String? createdAt;
  String? avatarUrl;
  String? htmlUrl;
  String? type;
  String? nodeId;
  String? bio;

  ResultUsers(
      {starredUrl,
      name,
      reposUrl,
      twitterUsername,
      url,
      gravatarId,
      following,
      subscriptionsUrl,
      followersUrl,
      siteAdmin,
      blog,
      publicRepos,
      updatedAt,
      followers,
      hireable,
      followingUrl,
      email,
      company,
      organizationsUrl,
      receivedEventsUrl,
      gistsUrl,
      eventsUrl,
      location,
      login,
      id,
      publicGists,
      createdAt,
      avatarUrl,
      htmlUrl,
      type,
      nodeId,
      bio});

  ResultUsers.fromJson(Map<String, dynamic> json) {
    starredUrl = json['starred_url'];
    name = json['name'];
    reposUrl = json['repos_url'];
    twitterUsername = json['twitter_username'];
    url = json['url'];
    gravatarId = json['gravatar_id'];
    following = json['following'];
    subscriptionsUrl = json['subscriptions_url'];
    followersUrl = json['followers_url'];
    siteAdmin = json['site_admin'];
    blog = json['blog'];
    publicRepos = json['public_repos'];
    updatedAt = json['updated_at'];
    followers = json['followers'];
    hireable = json['hireable'];
    followingUrl = json['following_url'];
    email = json['email'];
    company = json['company'];
    organizationsUrl = json['organizations_url'];
    receivedEventsUrl = json['received_events_url'];
    gistsUrl = json['gists_url'];
    eventsUrl = json['events_url'];
    location = json['location'];
    login = json['login'];
    id = json['id'];
    publicGists = json['public_gists'];
    createdAt = json['created_at'];
    avatarUrl = json['avatar_url'];
    htmlUrl = json['html_url'];
    type = json['type'];
    nodeId = json['node_id'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['starred_url'] = starredUrl;
    data['name'] = name;
    data['repos_url'] = reposUrl;
    data['twitter_username'] = twitterUsername;
    data['url'] = url;
    data['gravatar_id'] = gravatarId;
    data['following'] = following;
    data['subscriptions_url'] = subscriptionsUrl;
    data['followers_url'] = followersUrl;
    data['site_admin'] = siteAdmin;
    data['blog'] = blog;
    data['public_repos'] = publicRepos;
    data['updated_at'] = updatedAt;
    data['followers'] = followers;
    data['hireable'] = hireable;
    data['following_url'] = followingUrl;
    data['email'] = email;
    data['company'] = company;
    data['organizations_url'] = organizationsUrl;
    data['received_events_url'] = receivedEventsUrl;
    data['gists_url'] = gistsUrl;
    data['events_url'] = eventsUrl;
    data['location'] = location;
    data['login'] = login;
    data['id'] = id;
    data['public_gists'] = publicGists;
    data['created_at'] = createdAt;
    data['avatar_url'] = avatarUrl;
    data['html_url'] = htmlUrl;
    data['type'] = type;
    data['node_id'] = nodeId;
    data['bio'] = bio;
    return data;
  }
}
