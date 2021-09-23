class Projects {
  int? code;
  String? status;
  List<Result>? result;

  Projects({code, status, result});

  Projects.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
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

class Result {
  bool? fork;
  String? gitTagsUrl;
  String? releasesUrl;
  String? branchesUrl;
  bool? hasPages;
  int? size;
  String? blobsUrl;
  Owner? owner;
  String? issuesUrl;
  String? svnUrl;
  String? archiveUrl;
  String? defaultBranch;
  String? notificationsUrl;
  int? forksCount;
  String? milestonesUrl;
  String? pullsUrl;
  String? createdAt;
  int? openIssues;
  String? cloneUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? tagsUrl;
  bool? hasWiki;
  String? gitUrl;
  String? deploymentsUrl;
  String? contentsUrl;
  int? watchers;
  String? downloadsUrl;
  String? description;
  String? homepage;
  String? compareUrl;
  int? forks;
  String? labelsUrl;
  int? stargazersCount;
  String? commentsUrl;
  String? nodeId;
  String? htmlUrl;
  bool? private;
  bool? allowForking;
  String? subscribersUrl;
  String? name;
  String? languagesUrl;
  int? id;
  String? issueCommentUrl;
  String? language;
  String? eventsUrl;
  String? pushedAt;
  String? forksUrl;
  String? updatedAt;
  String? fullName;
  String? keysUrl;
  bool? hasDownloads;
  int? openIssuesCount;
  bool? hasProjects;
  String? commitsUrl;
  String? url;
  String? sshUrl;
  String? statusesUrl;
  String? hooksUrl;
  int? watchersCount;
  String? mergesUrl;
  String? stargazersUrl;
  License? license;
  bool? hasIssues;
  bool? disabled;
  String? subscriptionUrl;
  String? collaboratorsUrl;
  String? issueEventsUrl;
  bool? archived;
  String? contributorsUrl;
  String? teamsUrl;
  String? assigneesUrl;
  String? gitCommitsUrl;
  Permissions? permissions;
  String? mirrorUrl;

  Result(
      {fork,
      gitTagsUrl,
      releasesUrl,
      branchesUrl,
      hasPages,
      size,
      blobsUrl,
      owner,
      issuesUrl,
      svnUrl,
      archiveUrl,
      defaultBranch,
      notificationsUrl,
      forksCount,
      milestonesUrl,
      pullsUrl,
      createdAt,
      openIssues,
      cloneUrl,
      gitRefsUrl,
      treesUrl,
      tagsUrl,
      hasWiki,
      gitUrl,
      deploymentsUrl,
      contentsUrl,
      watchers,
      downloadsUrl,
      description,
      homepage,
      compareUrl,
      forks,
      labelsUrl,
      stargazersCount,
      commentsUrl,
      nodeId,
      htmlUrl,
      private,
      allowForking,
      subscribersUrl,
      name,
      languagesUrl,
      id,
      issueCommentUrl,
      language,
      eventsUrl,
      pushedAt,
      forksUrl,
      updatedAt,
      fullName,
      keysUrl,
      hasDownloads,
      openIssuesCount,
      hasProjects,
      commitsUrl,
      url,
      sshUrl,
      statusesUrl,
      hooksUrl,
      watchersCount,
      mergesUrl,
      stargazersUrl,
      license,
      hasIssues,
      disabled,
      subscriptionUrl,
      collaboratorsUrl,
      issueEventsUrl,
      archived,
      contributorsUrl,
      teamsUrl,
      assigneesUrl,
      gitCommitsUrl,
      permissions,
      mirrorUrl});

  Result.fromJson(Map<String, dynamic> json) {
    fork = json['fork'];
    gitTagsUrl = json['git_tags_url'];
    releasesUrl = json['releases_url'];
    branchesUrl = json['branches_url'];
    hasPages = json['has_pages'];
    size = json['size'];
    blobsUrl = json['blobs_url'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    issuesUrl = json['issues_url'];
    svnUrl = json['svn_url'];
    archiveUrl = json['archive_url'];
    defaultBranch = json['default_branch'];
    notificationsUrl = json['notifications_url'];
    forksCount = json['forks_count'];
    milestonesUrl = json['milestones_url'];
    pullsUrl = json['pulls_url'];
    createdAt = json['created_at'];
    openIssues = json['open_issues'];
    cloneUrl = json['clone_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    tagsUrl = json['tags_url'];
    hasWiki = json['has_wiki'];
    gitUrl = json['git_url'];
    deploymentsUrl = json['deployments_url'];
    contentsUrl = json['contents_url'];
    watchers = json['watchers'];
    downloadsUrl = json['downloads_url'];
    description = json['description'];
    homepage = json['homepage'];
    compareUrl = json['compare_url'];
    forks = json['forks'];
    labelsUrl = json['labels_url'];
    stargazersCount = json['stargazers_count'];
    commentsUrl = json['comments_url'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
    private = json['private'];
    allowForking = json['allow_forking'];
    subscribersUrl = json['subscribers_url'];
    name = json['name'];
    languagesUrl = json['languages_url'];
    id = json['id'];
    issueCommentUrl = json['issue_comment_url'];
    language = json['language'];
    eventsUrl = json['events_url'];
    pushedAt = json['pushed_at'];
    forksUrl = json['forks_url'];
    updatedAt = json['updated_at'];
    fullName = json['full_name'];
    keysUrl = json['keys_url'];
    hasDownloads = json['has_downloads'];
    openIssuesCount = json['open_issues_count'];
    hasProjects = json['has_projects'];
    commitsUrl = json['commits_url'];
    url = json['url'];
    sshUrl = json['ssh_url'];
    statusesUrl = json['statuses_url'];
    hooksUrl = json['hooks_url'];
    watchersCount = json['watchers_count'];
    mergesUrl = json['merges_url'];
    stargazersUrl = json['stargazers_url'];
    license =
        json['license'] != null ? License.fromJson(json['license']) : null;
    hasIssues = json['has_issues'];
    disabled = json['disabled'];
    subscriptionUrl = json['subscription_url'];
    collaboratorsUrl = json['collaborators_url'];
    issueEventsUrl = json['issue_events_url'];
    archived = json['archived'];
    contributorsUrl = json['contributors_url'];
    teamsUrl = json['teams_url'];
    assigneesUrl = json['assignees_url'];
    gitCommitsUrl = json['git_commits_url'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    mirrorUrl = json['mirror_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fork'] = fork;
    data['git_tags_url'] = gitTagsUrl;
    data['releases_url'] = releasesUrl;
    data['branches_url'] = branchesUrl;
    data['has_pages'] = hasPages;
    data['size'] = size;
    data['blobs_url'] = blobsUrl;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['issues_url'] = issuesUrl;
    data['svn_url'] = svnUrl;
    data['archive_url'] = archiveUrl;
    data['default_branch'] = defaultBranch;
    data['notifications_url'] = notificationsUrl;
    data['forks_count'] = forksCount;
    data['milestones_url'] = milestonesUrl;
    data['pulls_url'] = pullsUrl;
    data['created_at'] = createdAt;
    data['open_issues'] = openIssues;
    data['clone_url'] = cloneUrl;
    data['git_refs_url'] = gitRefsUrl;
    data['trees_url'] = treesUrl;
    data['tags_url'] = tagsUrl;
    data['has_wiki'] = hasWiki;
    data['git_url'] = gitUrl;
    data['deployments_url'] = deploymentsUrl;
    data['contents_url'] = contentsUrl;
    data['watchers'] = watchers;
    data['downloads_url'] = downloadsUrl;
    data['description'] = description;
    data['homepage'] = homepage;
    data['compare_url'] = compareUrl;
    data['forks'] = forks;
    data['labels_url'] = labelsUrl;
    data['stargazers_count'] = stargazersCount;
    data['comments_url'] = commentsUrl;
    data['node_id'] = nodeId;
    data['html_url'] = htmlUrl;
    data['private'] = private;
    data['allow_forking'] = allowForking;
    data['subscribers_url'] = subscribersUrl;
    data['name'] = name;
    data['languages_url'] = languagesUrl;
    data['id'] = id;
    data['issue_comment_url'] = issueCommentUrl;
    data['language'] = language;
    data['events_url'] = eventsUrl;
    data['pushed_at'] = pushedAt;
    data['forks_url'] = forksUrl;
    data['updated_at'] = updatedAt;
    data['full_name'] = fullName;
    data['keys_url'] = keysUrl;
    data['has_downloads'] = hasDownloads;
    data['open_issues_count'] = openIssuesCount;
    data['has_projects'] = hasProjects;
    data['commits_url'] = commitsUrl;
    data['url'] = url;
    data['ssh_url'] = sshUrl;
    data['statuses_url'] = statusesUrl;
    data['hooks_url'] = hooksUrl;
    data['watchers_count'] = watchersCount;
    data['merges_url'] = mergesUrl;
    data['stargazers_url'] = stargazersUrl;
    if (license != null) {
      data['license'] = license!.toJson();
    }
    data['has_issues'] = hasIssues;
    data['disabled'] = disabled;
    data['subscription_url'] = subscriptionUrl;
    data['collaborators_url'] = collaboratorsUrl;
    data['issue_events_url'] = issueEventsUrl;
    data['archived'] = archived;
    data['contributors_url'] = contributorsUrl;
    data['teams_url'] = teamsUrl;
    data['assignees_url'] = assigneesUrl;
    data['git_commits_url'] = gitCommitsUrl;
    if (permissions != null) {
      data['permissions'] = permissions!.toJson();
    }
    data['mirror_url'] = mirrorUrl;
    return data;
  }
}

class Owner {
  String? reposUrl;
  String? organizationsUrl;
  String? avatarUrl;
  String? nodeId;
  String? type;
  String? followingUrl;
  String? followersUrl;
  String? login;
  String? receivedEventsUrl;
  String? htmlUrl;
  bool? siteAdmin;
  String? gravatarId;
  String? gistsUrl;
  String? url;
  int? id;
  String? subscriptionsUrl;
  String? starredUrl;
  String? eventsUrl;

  Owner(
      {reposUrl,
      organizationsUrl,
      avatarUrl,
      nodeId,
      type,
      followingUrl,
      followersUrl,
      login,
      receivedEventsUrl,
      htmlUrl,
      siteAdmin,
      gravatarId,
      gistsUrl,
      url,
      id,
      subscriptionsUrl,
      starredUrl,
      eventsUrl});

  Owner.fromJson(Map<String, dynamic> json) {
    reposUrl = json['repos_url'];
    organizationsUrl = json['organizations_url'];
    avatarUrl = json['avatar_url'];
    nodeId = json['node_id'];
    type = json['type'];
    followingUrl = json['following_url'];
    followersUrl = json['followers_url'];
    login = json['login'];
    receivedEventsUrl = json['received_events_url'];
    htmlUrl = json['html_url'];
    siteAdmin = json['site_admin'];
    gravatarId = json['gravatar_id'];
    gistsUrl = json['gists_url'];
    url = json['url'];
    id = json['id'];
    subscriptionsUrl = json['subscriptions_url'];
    starredUrl = json['starred_url'];
    eventsUrl = json['events_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['repos_url'] = reposUrl;
    data['organizations_url'] = organizationsUrl;
    data['avatar_url'] = avatarUrl;
    data['node_id'] = nodeId;
    data['type'] = type;
    data['following_url'] = followingUrl;
    data['followers_url'] = followersUrl;
    data['login'] = login;
    data['received_events_url'] = receivedEventsUrl;
    data['html_url'] = htmlUrl;
    data['site_admin'] = siteAdmin;
    data['gravatar_id'] = gravatarId;
    data['gists_url'] = gistsUrl;
    data['url'] = url;
    data['id'] = id;
    data['subscriptions_url'] = subscriptionsUrl;
    data['starred_url'] = starredUrl;
    data['events_url'] = eventsUrl;
    return data;
  }
}

class License {
  String? key;
  String? nodeId;
  String? spdxId;
  String? name;
  String? url;

  License({key, nodeId, spdxId, name, url});

  License.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    nodeId = json['node_id'];
    spdxId = json['spdx_id'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['node_id'] = nodeId;
    data['spdx_id'] = spdxId;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Permissions {
  bool? pull;
  bool? maintain;
  bool? triage;
  bool? admin;
  bool? push;

  Permissions({pull, maintain, triage, admin, push});

  Permissions.fromJson(Map<String, dynamic> json) {
    pull = json['pull'];
    maintain = json['maintain'];
    triage = json['triage'];
    admin = json['admin'];
    push = json['push'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pull'] = pull;
    data['maintain'] = maintain;
    data['triage'] = triage;
    data['admin'] = admin;
    data['push'] = push;
    return data;
  }
}
