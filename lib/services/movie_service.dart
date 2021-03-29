import 'package:flutter/material.dart';
import '../models/view.dart';
import 'package:http/http.dart' as http;
import '../reposatiry/movie_reposatiry.dart';
import 'dart:convert';

class Movieservice {
  Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      print(response.body);
      return List<Movie>.from((json.decode(response.body) as List).map((e) => Movie.fromJson((e)))).toList();
    } else {
      throw Exception('FAILED TO LOAD MOVIE');
    }
  }
}
