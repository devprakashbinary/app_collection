class AppCard {
  String iconUrl;
  String name;
  String title;
  double rating;
  String ratingCount;
  String appPath;
  List<Thumbnails> thumbnails;

  AppCard(
      {this.iconUrl,
        this.name,
        this.title,
        this.rating,
        this.ratingCount,
        this.appPath,
        this.thumbnails});

  AppCard.fromJson(Map<String, dynamic> json) {
    iconUrl = json['iconUrl'];
    name = json['name'];
    title = json['title'];
    rating = json['rating'];
    ratingCount = json['ratingCount'];
    appPath = json['appPath'];
    if (json['thumbnails'] != null) {
      thumbnails = new List<Thumbnails>();
      json['thumbnails'].forEach((v) {
        thumbnails.add(new Thumbnails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconUrl'] = this.iconUrl;
    data['name'] = this.name;
    data['title'] = this.title;
    data['rating'] = this.rating;
    data['ratingCount'] = this.ratingCount;
    data['appPath'] = this.appPath;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Thumbnails {
  String url;

  Thumbnails({this.url});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}