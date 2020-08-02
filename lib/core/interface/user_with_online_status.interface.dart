class UserWithOnlineStatus {
  String thumbnailUrl;
  bool isOnline;

  UserWithOnlineStatus({this.thumbnailUrl, this.isOnline});

  UserWithOnlineStatus.fromJson(Map<String, dynamic> json) {
    thumbnailUrl = json['thumbnailUrl'];
    isOnline = json['isOnline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnailUrl'] = this.thumbnailUrl;
    data['isOnline'] = this.isOnline;
    return data;
  }
}