import 'package:flutter/material.dart';
import '../models/view.dart';
import 'package:provider/provider.dart';


class Moviesprovider extends ChangeNotifier{
List<Movie> movies;
MovieReposatry _MovieReposatry=MovieReposatry();

Moviesprovider(){
    getMovies();
}
void getMovies(){
    _MovieReposatry.fetchMovies().then(
        (newMovies){
            movies=newMovies;
            notifyListeners();
        }
    )
}
}