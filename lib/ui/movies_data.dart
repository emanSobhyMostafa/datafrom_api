import 'package:flutter/material.dart';
import '../models/view.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import './movie_widget.dart';
import '../services/movie_service.dart';
import 'package:provider/provider.dart';
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
        body: ChangeNotifierProvider<Moviesprovider>(
            create:(context)=>Moviesprovider(),
            child:Consumer<Moviesprovider>(
            builder: (buildContext, movieProvider,_) {
              if (movieProvider.hasData) {
                final movies = snapshot.data;
                return ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (ctx, index) {
                      final movie =movieProvider.movies[index];

                      return Moviewidget(movie: movie);
                    });
              } )else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}


