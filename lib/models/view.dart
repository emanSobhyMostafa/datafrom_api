class Movie {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  Movie({this.thumbnailUrl, this.url, this.albumId, this.id, this.title});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(albumId: json['albumId'], id: json['id'], title: json['title'], url: json['url'], thumbnailUrl: json['thumbnailUrl']);
  }
}
