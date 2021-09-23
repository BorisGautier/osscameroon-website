class Twitter {
  Twitter({
    required this.code,
    required this.status,
    required this.result,
  });
  late final int code;
  late final String status;
  late final Result result;

  Twitter.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    result = Result.fromJson(json['result']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['status'] = status;
    _data['result'] = result.toJson();
    return _data;
  }
}

class Result {
  Result({
    required this.statuses,
    required this.searchMetadata,
  });
  late final List<Statuses> statuses;
  late final SearchMetadata searchMetadata;

  Result.fromJson(Map<String, dynamic> json) {
    statuses =
        List.from(json['statuses']).map((e) => Statuses.fromJson(e)).toList();
    searchMetadata = SearchMetadata.fromJson(json['search_metadata']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statuses'] = statuses.map((e) => e.toJson()).toList();
    _data['search_metadata'] = searchMetadata.toJson();
    return _data;
  }
}

class Statuses {
  Statuses({
    required this.createdAt,
    required this.id,
    required this.idStr,
    required this.text,
    required this.truncated,
    required this.entities,
    required this.metadata,
    required this.source,
    this.inReplyToStatusId,
    this.inReplyToStatusIdStr,
    this.inReplyToUserId,
    this.inReplyToUserIdStr,
    this.inReplyToScreenName,
    required this.user,
    this.geo,
    this.coordinates,
    this.place,
    this.contributors,
    required this.isQuoteStatus,
    required this.retweetCount,
    required this.favoriteCount,
    required this.favorited,
    required this.retweeted,
    required this.lang,
  });
  late final String createdAt;
  late final int id;
  late final String idStr;
  late final String text;
  late final bool truncated;
  late final Entities entities;
  late final Metadata metadata;
  late final String source;
  late final Null inReplyToStatusId;
  late final Null inReplyToStatusIdStr;
  late final Null inReplyToUserId;
  late final Null inReplyToUserIdStr;
  late final Null inReplyToScreenName;
  late final User user;
  late final Null geo;
  late final Null coordinates;
  late final Null place;
  late final Null contributors;
  late final bool isQuoteStatus;
  late final int retweetCount;
  late final int favoriteCount;
  late final bool favorited;
  late final bool retweeted;
  late final String? lang;

  Statuses.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    id = json['id'];
    idStr = json['id_str'];
    text = json['text'];
    truncated = json['truncated'];
    entities = Entities.fromJson(json['entities']);
    metadata = Metadata.fromJson(json['metadata']);
    source = json['source'];
    inReplyToStatusId = null;
    inReplyToStatusIdStr = null;
    inReplyToUserId = null;
    inReplyToUserIdStr = null;
    inReplyToScreenName = null;
    user = User.fromJson(json['user']);
    geo = null;
    coordinates = null;
    place = null;
    contributors = null;
    isQuoteStatus = json['is_quote_status'];
    retweetCount = json['retweet_count'];
    favoriteCount = json['favorite_count'];
    favorited = json['favorited'];
    retweeted = json['retweeted'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['created_at'] = createdAt;
    _data['id'] = id;
    _data['id_str'] = idStr;
    _data['text'] = text;
    _data['truncated'] = truncated;
    _data['entities'] = entities.toJson();
    _data['metadata'] = metadata.toJson();
    _data['source'] = source;
    _data['in_reply_to_status_id'] = inReplyToStatusId;
    _data['in_reply_to_status_id_str'] = inReplyToStatusIdStr;
    _data['in_reply_to_user_id'] = inReplyToUserId;
    _data['in_reply_to_user_id_str'] = inReplyToUserIdStr;
    _data['in_reply_to_screen_name'] = inReplyToScreenName;
    _data['user'] = user.toJson();
    _data['geo'] = geo;
    _data['coordinates'] = coordinates;
    _data['place'] = place;
    _data['contributors'] = contributors;
    _data['is_quote_status'] = isQuoteStatus;
    _data['retweet_count'] = retweetCount;
    _data['favorite_count'] = favoriteCount;
    _data['favorited'] = favorited;
    _data['retweeted'] = retweeted;
    _data['lang'] = lang;
    return _data;
  }
}

class Entities {
  Entities({
    required this.hashtags,
    required this.symbols,
    required this.userMentions,
    required this.urls,
  });
  late final List<Hashtags> hashtags;
  late final List<dynamic> symbols;
  late final List<UserMentions> userMentions;
  late final List<Urls> urls;

  Entities.fromJson(Map<String, dynamic> json) {
    hashtags =
        List.from(json['hashtags']).map((e) => Hashtags.fromJson(e)).toList();
    symbols = List.castFrom<dynamic, dynamic>(json['symbols']);
    userMentions = List.from(json['user_mentions'])
        .map((e) => UserMentions.fromJson(e))
        .toList();
    urls = List.from(json['urls']).map((e) => Urls.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hashtags'] = hashtags.map((e) => e.toJson()).toList();
    _data['symbols'] = symbols;
    _data['user_mentions'] = userMentions.map((e) => e.toJson()).toList();
    _data['urls'] = urls.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Hashtags {
  Hashtags({
    required this.text,
    required this.indices,
  });
  late final String text;
  late final List<int> indices;

  Hashtags.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    indices = List.castFrom<dynamic, int>(json['indices']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['indices'] = indices;
    return _data;
  }
}

class UserMentions {
  UserMentions({
    required this.screenName,
    required this.name,
    required this.id,
    required this.idStr,
    required this.indices,
  });
  late final String screenName;
  late final String name;
  late final int id;
  late final String idStr;
  late final List<int> indices;

  UserMentions.fromJson(Map<String, dynamic> json) {
    screenName = json['screen_name'];
    name = json['name'];
    id = json['id'];
    idStr = json['id_str'];
    indices = List.castFrom<dynamic, int>(json['indices']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['screen_name'] = screenName;
    _data['name'] = name;
    _data['id'] = id;
    _data['id_str'] = idStr;
    _data['indices'] = indices;
    return _data;
  }
}

class Urls {
  Urls({
    required this.url,
    required this.expandedUrl,
    required this.displayUrl,
    required this.indices,
  });
  late final String url;
  late final String expandedUrl;
  late final String displayUrl;
  late final List<int> indices;

  Urls.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    expandedUrl = json['expanded_url'];
    displayUrl = json['display_url'];
    indices = List.castFrom<dynamic, int>(json['indices']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    _data['expanded_url'] = expandedUrl;
    _data['display_url'] = displayUrl;
    _data['indices'] = indices;
    return _data;
  }
}

class Metadata {
  Metadata({
    required this.isoLanguageCode,
    required this.resultType,
  });
  late final String isoLanguageCode;
  late final String resultType;

  Metadata.fromJson(Map<String, dynamic> json) {
    isoLanguageCode = json['iso_language_code'];
    resultType = json['result_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['iso_language_code'] = isoLanguageCode;
    _data['result_type'] = resultType;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.idStr,
    required this.name,
    required this.screenName,
    required this.location,
    required this.description,
    this.url,
    required this.entities,
    required this.protected,
    required this.followersCount,
    required this.friendsCount,
    required this.listedCount,
    required this.createdAt,
    required this.favouritesCount,
    this.utcOffset,
    this.timeZone,
    required this.geoEnabled,
    required this.verified,
    required this.statusesCount,
    this.lang,
    required this.contributorsEnabled,
    required this.isTranslator,
    required this.isTranslationEnabled,
    required this.profileBackgroundColor,
    this.profileBackgroundImageUrl,
    this.profileBackgroundImageUrlHttps,
    required this.profileBackgroundTile,
    required this.profileImageUrl,
    required this.profileImageUrlHttps,
    required this.profileBannerUrl,
    required this.profileLinkColor,
    required this.profileSidebarBorderColor,
    required this.profileSidebarFillColor,
    required this.profileTextColor,
    required this.profileUseBackgroundImage,
    required this.hasExtendedProfile,
    required this.defaultProfile,
    required this.defaultProfileImage,
    this.following,
    this.followRequestSent,
    this.notifications,
    required this.translatorType,
    required this.withheldInCountries,
  });
  late final int id;
  late final String idStr;
  late final String name;
  late final String screenName;
  late final String location;
  late final String description;
  late final String? url;
  late final Entities entities;
  late final bool protected;
  late final int followersCount;
  late final int friendsCount;
  late final int listedCount;
  late final String createdAt;
  late final int favouritesCount;
  late final Null utcOffset;
  late final Null timeZone;
  late final bool geoEnabled;
  late final bool verified;
  late final int statusesCount;
  late final Null lang;
  late final bool contributorsEnabled;
  late final bool isTranslator;
  late final bool isTranslationEnabled;
  late final String profileBackgroundColor;
  late final Null profileBackgroundImageUrl;
  late final Null profileBackgroundImageUrlHttps;
  late final bool profileBackgroundTile;
  late final String profileImageUrl;
  late final String profileImageUrlHttps;
  late final String profileBannerUrl;
  late final String profileLinkColor;
  late final String profileSidebarBorderColor;
  late final String profileSidebarFillColor;
  late final String profileTextColor;
  late final bool profileUseBackgroundImage;
  late final bool hasExtendedProfile;
  late final bool defaultProfile;
  late final bool defaultProfileImage;
  late final Null following;
  late final Null followRequestSent;
  late final Null notifications;
  late final String translatorType;
  late final List<dynamic> withheldInCountries;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idStr = json['id_str'];
    name = json['name'];
    screenName = json['screen_name'];
    location = json['location'];
    description = json['description'];
    url = null;
    entities = Entities.fromJson(json['entities']);
    protected = json['protected'];
    followersCount = json['followers_count'];
    friendsCount = json['friends_count'];
    listedCount = json['listed_count'];
    createdAt = json['created_at'];
    favouritesCount = json['favourites_count'];
    utcOffset = null;
    timeZone = null;
    geoEnabled = json['geo_enabled'];
    verified = json['verified'];
    statusesCount = json['statuses_count'];
    lang = null;
    contributorsEnabled = json['contributors_enabled'];
    isTranslator = json['is_translator'];
    isTranslationEnabled = json['is_translation_enabled'];
    profileBackgroundColor = json['profile_background_color'];
    profileBackgroundImageUrl = null;
    profileBackgroundImageUrlHttps = null;
    profileBackgroundTile = json['profile_background_tile'];
    profileImageUrl = json['profile_image_url'];
    profileImageUrlHttps = json['profile_image_url_https'];
    profileBannerUrl = json['profile_banner_url'];
    profileLinkColor = json['profile_link_color'];
    profileSidebarBorderColor = json['profile_sidebar_border_color'];
    profileSidebarFillColor = json['profile_sidebar_fill_color'];
    profileTextColor = json['profile_text_color'];
    profileUseBackgroundImage = json['profile_use_background_image'];
    hasExtendedProfile = json['has_extended_profile'];
    defaultProfile = json['default_profile'];
    defaultProfileImage = json['default_profile_image'];
    following = null;
    followRequestSent = null;
    notifications = null;
    translatorType = json['translator_type'];
    withheldInCountries =
        List.castFrom<dynamic, dynamic>(json['withheld_in_countries']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['id_str'] = idStr;
    _data['name'] = name;
    _data['screen_name'] = screenName;
    _data['location'] = location;
    _data['description'] = description;
    _data['url'] = url;
    _data['entities'] = entities.toJson();
    _data['protected'] = protected;
    _data['followers_count'] = followersCount;
    _data['friends_count'] = friendsCount;
    _data['listed_count'] = listedCount;
    _data['created_at'] = createdAt;
    _data['favourites_count'] = favouritesCount;
    _data['utc_offset'] = utcOffset;
    _data['time_zone'] = timeZone;
    _data['geo_enabled'] = geoEnabled;
    _data['verified'] = verified;
    _data['statuses_count'] = statusesCount;
    _data['lang'] = lang;
    _data['contributors_enabled'] = contributorsEnabled;
    _data['is_translator'] = isTranslator;
    _data['is_translation_enabled'] = isTranslationEnabled;
    _data['profile_background_color'] = profileBackgroundColor;
    _data['profile_background_image_url'] = profileBackgroundImageUrl;
    _data['profile_background_image_url_https'] =
        profileBackgroundImageUrlHttps;
    _data['profile_background_tile'] = profileBackgroundTile;
    _data['profile_image_url'] = profileImageUrl;
    _data['profile_image_url_https'] = profileImageUrlHttps;
    _data['profile_banner_url'] = profileBannerUrl;
    _data['profile_link_color'] = profileLinkColor;
    _data['profile_sidebar_border_color'] = profileSidebarBorderColor;
    _data['profile_sidebar_fill_color'] = profileSidebarFillColor;
    _data['profile_text_color'] = profileTextColor;
    _data['profile_use_background_image'] = profileUseBackgroundImage;
    _data['has_extended_profile'] = hasExtendedProfile;
    _data['default_profile'] = defaultProfile;
    _data['default_profile_image'] = defaultProfileImage;
    _data['following'] = following;
    _data['follow_request_sent'] = followRequestSent;
    _data['notifications'] = notifications;
    _data['translator_type'] = translatorType;
    _data['withheld_in_countries'] = withheldInCountries;
    return _data;
  }
}

class SearchMetadata {
  SearchMetadata({
    required this.completedIn,
    required this.maxId,
    required this.maxIdStr,
    required this.nextResults,
    required this.query,
    required this.refreshUrl,
    required this.count,
    required this.sinceId,
    required this.sinceIdStr,
  });
  late final double completedIn;
  late final int maxId;
  late final String maxIdStr;
  late final String nextResults;
  late final String query;
  late final String refreshUrl;
  late final int count;
  late final int sinceId;
  late final String sinceIdStr;

  SearchMetadata.fromJson(Map<String, dynamic> json) {
    completedIn = json['completed_in'];
    maxId = json['max_id'];
    maxIdStr = json['max_id_str'];
    nextResults = json['next_results'];
    query = json['query'];
    refreshUrl = json['refresh_url'];
    count = json['count'];
    sinceId = json['since_id'];
    sinceIdStr = json['since_id_str'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['completed_in'] = completedIn;
    _data['max_id'] = maxId;
    _data['max_id_str'] = maxIdStr;
    _data['next_results'] = nextResults;
    _data['query'] = query;
    _data['refresh_url'] = refreshUrl;
    _data['count'] = count;
    _data['since_id'] = sinceId;
    _data['since_id_str'] = sinceIdStr;
    return _data;
  }
}
