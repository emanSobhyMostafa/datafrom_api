class Movie {
  bool isFav;
  bool adult;
  String backdrop_path;
  List<int> genre_ids;
  int id;
  String original_language;
  String originalTitle;
  String overview;
  double popularity;
  String poster_path;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;
  Movie({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.poster_path,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json["adult"],
      backdrop_path: json["backdrop_path"],
      genre_ids: List<int>.from(json["genre_ids"].map((a) => a)),
      id: json["id"],
      original_language: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      popularity: json["popularity"].toDouble(),
      poster_path: json["poster_path"],
      releaseDate: DateTime.parse(json["release_date"]),
      title: json["title"],
      video: json["video"],
      voteAverage: json["vote_average"].toDouble(),
      voteCount: json["vote_count"],
    );
  }
}
