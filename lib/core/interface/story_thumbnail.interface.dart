class StoryThumbnail {
  String userImage;
  String userName;
  String thumbnailUrl;

  StoryThumbnail({this.userImage, this.userName, this.thumbnailUrl});

  StoryThumbnail.fromJson(Map<String, dynamic> json) {
    userImage = json['userImage'];
    userName = json['userName'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userImage'] = this.userImage;
    data['userName'] = this.userName;
    data['thumbnailUrl'] = this.thumbnailUrl;
    return data;
  }
}