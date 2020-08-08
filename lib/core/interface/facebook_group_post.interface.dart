class FacebookGroupPost {
  String groupName;
  String postContent;
  String contentDescription;
  String mainContentType;
  String postTimeLong;
  User user;
  LikeCommentStatus likeCommentStatus;

  FacebookGroupPost(
      {this.groupName,
        this.postContent,
        this.contentDescription,
        this.mainContentType,
        this.postTimeLong,
        this.user,
        this.likeCommentStatus});

  FacebookGroupPost.fromJson(Map<String, dynamic> json) {
    groupName = json['groupName'];
    postContent = json['postContent'];
    contentDescription = json['contentDescription'];
    mainContentType = json['mainContentType'];
    postTimeLong = json['postTimeLong'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    likeCommentStatus = json['likeCommentStatus'] != null
        ? new LikeCommentStatus.fromJson(json['likeCommentStatus'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['groupName'] = this.groupName;
    data['postContent'] = this.postContent;
    data['contentDescription'] = this.contentDescription;
    data['mainContentType'] = this.mainContentType;
    data['postTimeLong'] = this.postTimeLong;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.likeCommentStatus != null) {
      data['likeCommentStatus'] = this.likeCommentStatus.toJson();
    }
    return data;
  }
}

class User {
  String imgUrl;
  String name;

  User({this.imgUrl, this.name});

  User.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['name'] = this.name;
    return data;
  }
}

class LikeCommentStatus {
  String likes;
  String comments;
  String shares;

  LikeCommentStatus({this.likes, this.comments, this.shares});

  LikeCommentStatus.fromJson(Map<String, dynamic> json) {
    likes = json['likes'];
    comments = json['comments'];
    shares = json['shares'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['shares'] = this.shares;
    return data;
  }
}
