import 'package:flutter/material.dart';
import '../models/view.dart';
import '../provider/movie_provider.dart';
import '../services/movie_service.dart';

class MovieReposatry {
  Movieservice _Movieservice = Movieservice();
  Future<List<Movie>> fetchMovies() {
    return _Movieservice.fetchMovies();
  }
}
