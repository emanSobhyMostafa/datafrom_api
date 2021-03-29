import 'package:flutter/material.dart';
import '../models/view.dart';
import 'dart:convert';
import './movie_widget.dart';
import '../services/movie_service.dart';
import '../provider/movie_provider.dart';
import 'package:provider/provider.dart';

class Moviescreen extends StatelessWidget {
  Moviescreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text("movies"),
        ),
        body: ChangeNotifierProvider<Moviesprovider>(
            create: (context) => Moviesprovider(),
            child: Consumer<Moviesprovider>(builder: (buildContext, movieProvider, _) {
              return (movieProvider.movies != null)
                  ? ListView.builder(
                      itemCount: movieProvider.movies.length,
                      itemBuilder: (ctx, index) {
                        final movie = movieProvider.movies[index];

                        return Moviewidget(movie: movie);
                      })
                  : Center(child: CircularProgressIndicator());
            })));
  }
}
