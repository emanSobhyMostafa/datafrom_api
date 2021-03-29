class Movie {
  int rating;
  int id;
  String title;
  String url;
  String image;
  Movie({this.image, this.url, this.rating, this.id, this.title});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(rating: json['rating'], id: json['id'], title: json['title'], url: json['url'], image: json['image']);
  }
}
