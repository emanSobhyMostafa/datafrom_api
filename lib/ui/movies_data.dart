import 'package:flutter/material.dart';
import '../models/view.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import './movie_widget.dart';

class Moviescreen extends StatefulWidget {
  Moviescreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MoviescreenState createState() => _MoviescreenState();
}

class _MoviescreenState extends State<Moviescreen> {
  Future<List<Movie>> futerMovies;

  @override
  void initState() {
    super.initState();
    futerMovies = fetchMovies();
  }

  @override
  Widget build(BuildContext bl7) {
    return Scaffold(
        appBar: AppBar(
          title: Text("movies"),
        ),
        body: FutureBuilder<List<Movie>>(
            future: futerMovies,
            builder: (bl7, snapshot) {
              if (snapshot.hasData) {
                final movies = snapshot.data;
                return ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (ctx, index) {
                      final movie = movies[index];

                      return Moviewidget(movie: movie);
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}

Future<List<Movie>> fetchMovies() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200) {
    print(response.body);
    return List<Movie>.from((json.decode(response.body) as List).map((e) => Movie.fromJson((e)))).toList();
  } else {
    throw Exception('FAILED TO LOAD MOVIE');
  }
}
