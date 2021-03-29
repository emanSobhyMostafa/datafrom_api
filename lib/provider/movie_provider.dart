import 'package:flutter/material.dart';
import '../models/view.dart';
import 'package:provider/provider.dart';
import '../reposatiry/movie_reposatiry.dart';

class Moviesprovider extends ChangeNotifier {
  List<Movie> movies;
  MovieReposatry _MovieReposatry = MovieReposatry();

  Moviesprovider() {
    getMovies();
  }
  void getMovies() {
    _MovieReposatry.fetchMovies().then((newMovies) {
      movies = newMovies;
      notifyListeners();
    });
  }
}
