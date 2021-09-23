// ignore_for_file: file_names
import 'package:mobile/src/models/projects.dart';

class ProjectsQuery {
  int? code;
  String? status;
  Result? result;

  ProjectsQuery({code, status, result});

  ProjectsQuery.fromJson(Map<String, dynamic> json) {
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
  String? milestonesUrl;
  String? assigneesUrl;
  String? notificationsUrl;
  String? fullName;
  String? subscribersUrl;
  String? issueEventsUrl;
  String? teamsUrl;
  String? issuesUrl;
  bool? hasProjects;
  String? contentsUrl;
  String? updatedAt;
  bool? hasDownloads;
  bool? disabled;
  int? watchers;
  String? nodeId;
  String? description;
  String? mergesUrl;
  String? homepage;
  int? forksCount;
  Permissions? permissions;
  String? keysUrl;
  String? forksUrl;
  int? openIssuesCount;
  String? commentsUrl;
  String? language;
  bool? hasPages;
  String? treesUrl;
  String? branchesUrl;
  bool? archived;
  String? subscriptionUrl;
  String? labelsUrl;
  License? license;
  bool? hasIssues;
  String? gitRefsUrl;
  int? forks;
  String? issueCommentUrl;
  int? size;
  String? languagesUrl;
  String? blobsUrl;
  String? htmlUrl;
  int? openIssues;
  String? sshUrl;
  String? contributorsUrl;
  bool? hasWiki;
  String? releasesUrl;
  String? gitCommitsUrl;
  Owner? owner;
  String? defaultBranch;
  bool? fork;
  String? compareUrl;
  String? mirrorUrl;
  String? commitsUrl;
  String? gitTagsUrl;
  String? archiveUrl;
  String? cloneUrl;
  String? svnUrl;
  String? tagsUrl;
  String? eventsUrl;
  String? statusesUrl;
  String? url;
  String? stargazersUrl;
  String? downloadsUrl;
  bool? private;
  int? stargazersCount;
  String? deploymentsUrl;
  String? gitUrl;
  String? collaboratorsUrl;
  String? createdAt;
  String? name;
  int? watchersCount;
  String? pushedAt;
  String? hooksUrl;
  String? pullsUrl;
  bool? allowForking;

  Hits(
      {id,
      milestonesUrl,
      assigneesUrl,
      notificationsUrl,
      fullName,
      subscribersUrl,
      issueEventsUrl,
      teamsUrl,
      issuesUrl,
      hasProjects,
      contentsUrl,
      updatedAt,
      hasDownloads,
      disabled,
      watchers,
      nodeId,
      description,
      mergesUrl,
      homepage,
      forksCount,
      permissions,
      keysUrl,
      forksUrl,
      openIssuesCount,
      commentsUrl,
      language,
      hasPages,
      treesUrl,
      branchesUrl,
      archived,
      subscriptionUrl,
      labelsUrl,
      license,
      hasIssues,
      gitRefsUrl,
      forks,
      issueCommentUrl,
      size,
      languagesUrl,
      blobsUrl,
      htmlUrl,
      openIssues,
      sshUrl,
      contributorsUrl,
      hasWiki,
      releasesUrl,
      gitCommitsUrl,
      owner,
      defaultBranch,
      fork,
      compareUrl,
      mirrorUrl,
      commitsUrl,
      gitTagsUrl,
      archiveUrl,
      cloneUrl,
      svnUrl,
      tagsUrl,
      eventsUrl,
      statusesUrl,
      url,
      stargazersUrl,
      downloadsUrl,
      private,
      stargazersCount,
      deploymentsUrl,
      gitUrl,
      collaboratorsUrl,
      createdAt,
      name,
      watchersCount,
      pushedAt,
      hooksUrl,
      pullsUrl,
      allowForking});

  Hits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    milestonesUrl = json['milestones_url'];
    assigneesUrl = json['assignees_url'];
    notificationsUrl = json['notifications_url'];
    fullName = json['full_name'];
    subscribersUrl = json['subscribers_url'];
    issueEventsUrl = json['issue_events_url'];
    teamsUrl = json['teams_url'];
    issuesUrl = json['issues_url'];
    hasProjects = json['has_projects'];
    contentsUrl = json['contents_url'];
    updatedAt = json['updated_at'];
    hasDownloads = json['has_downloads'];
    disabled = json['disabled'];
    watchers = json['watchers'];
    nodeId = json['node_id'];
    description = json['description'];
    mergesUrl = json['merges_url'];
    homepage = json['homepage'];
    forksCount = json['forks_count'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    keysUrl = json['keys_url'];
    forksUrl = json['forks_url'];
    openIssuesCount = json['open_issues_count'];
    commentsUrl = json['comments_url'];
    language = json['language'];
    hasPages = json['has_pages'];
    treesUrl = json['trees_url'];
    branchesUrl = json['branches_url'];
    archived = json['archived'];
    subscriptionUrl = json['subscription_url'];
    labelsUrl = json['labels_url'];
    license =
        json['license'] != null ? License.fromJson(json['license']) : null;
    hasIssues = json['has_issues'];
    gitRefsUrl = json['git_refs_url'];
    forks = json['forks'];
    issueCommentUrl = json['issue_comment_url'];
    size = json['size'];
    languagesUrl = json['languages_url'];
    blobsUrl = json['blobs_url'];
    htmlUrl = json['html_url'];
    openIssues = json['open_issues'];
    sshUrl = json['ssh_url'];
    contributorsUrl = json['contributors_url'];
    hasWiki = json['has_wiki'];
    releasesUrl = json['releases_url'];
    gitCommitsUrl = json['git_commits_url'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    defaultBranch = json['default_branch'];
    fork = json['fork'];
    compareUrl = json['compare_url'];
    mirrorUrl = json['mirror_url'];
    commitsUrl = json['commits_url'];
    gitTagsUrl = json['git_tags_url'];
    archiveUrl = json['archive_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    tagsUrl = json['tags_url'];
    eventsUrl = json['events_url'];
    statusesUrl = json['statuses_url'];
    url = json['url'];
    stargazersUrl = json['stargazers_url'];
    downloadsUrl = json['downloads_url'];
    private = json['private'];
    stargazersCount = json['stargazers_count'];
    deploymentsUrl = json['deployments_url'];
    gitUrl = json['git_url'];
    collaboratorsUrl = json['collaborators_url'];
    createdAt = json['created_at'];
    name = json['name'];
    watchersCount = json['watchers_count'];
    pushedAt = json['pushed_at'];
    hooksUrl = json['hooks_url'];
    pullsUrl = json['pulls_url'];
    allowForking = json['allow_forking'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['milestones_url'] = milestonesUrl;
    data['assignees_url'] = assigneesUrl;
    data['notifications_url'] = notificationsUrl;
    data['full_name'] = fullName;
    data['subscribers_url'] = subscribersUrl;
    data['issue_events_url'] = issueEventsUrl;
    data['teams_url'] = teamsUrl;
    data['issues_url'] = issuesUrl;
    data['has_projects'] = hasProjects;
    data['contents_url'] = contentsUrl;
    data['updated_at'] = updatedAt;
    data['has_downloads'] = hasDownloads;
    data['disabled'] = disabled;
    data['watchers'] = watchers;
    data['node_id'] = nodeId;
    data['description'] = description;
    data['merges_url'] = mergesUrl;
    data['homepage'] = homepage;
    data['forks_count'] = forksCount;
    if (permissions != null) {
      data['permissions'] = permissions!.toJson();
    }
    data['keys_url'] = keysUrl;
    data['forks_url'] = forksUrl;
    data['open_issues_count'] = openIssuesCount;
    data['comments_url'] = commentsUrl;
    data['language'] = language;
    data['has_pages'] = hasPages;
    data['trees_url'] = treesUrl;
    data['branches_url'] = branchesUrl;
    data['archived'] = archived;
    data['subscription_url'] = subscriptionUrl;
    data['labels_url'] = labelsUrl;
    if (license != null) {
      data['license'] = license!.toJson();
    }
    data['has_issues'] = hasIssues;
    data['git_refs_url'] = gitRefsUrl;
    data['forks'] = forks;
    data['issue_comment_url'] = issueCommentUrl;
    data['size'] = size;
    data['languages_url'] = languagesUrl;
    data['blobs_url'] = blobsUrl;
    data['html_url'] = htmlUrl;
    data['open_issues'] = openIssues;
    data['ssh_url'] = sshUrl;
    data['contributors_url'] = contributorsUrl;
    data['has_wiki'] = hasWiki;
    data['releases_url'] = releasesUrl;
    data['git_commits_url'] = gitCommitsUrl;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['default_branch'] = defaultBranch;
    data['fork'] = fork;
    data['compare_url'] = compareUrl;
    data['mirror_url'] = mirrorUrl;
    data['commits_url'] = commitsUrl;
    data['git_tags_url'] = gitTagsUrl;
    data['archive_url'] = archiveUrl;
    data['clone_url'] = cloneUrl;
    data['svn_url'] = svnUrl;
    data['tags_url'] = tagsUrl;
    data['events_url'] = eventsUrl;
    data['statuses_url'] = statusesUrl;
    data['url'] = url;
    data['stargazers_url'] = stargazersUrl;
    data['downloads_url'] = downloadsUrl;
    data['private'] = private;
    data['stargazers_count'] = stargazersCount;
    data['deployments_url'] = deploymentsUrl;
    data['git_url'] = gitUrl;
    data['collaborators_url'] = collaboratorsUrl;
    data['created_at'] = createdAt;
    data['name'] = name;
    data['watchers_count'] = watchersCount;
    data['pushed_at'] = pushedAt;
    data['hooks_url'] = hooksUrl;
    data['pulls_url'] = pullsUrl;
    data['allow_forking'] = allowForking;
    return data;
  }
}
