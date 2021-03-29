import 'package:flutter/material.dart';
import '../models/view.dart';
import './movie_detail.dart';

class Moviewidget extends StatelessWidget {
  Moviewidget({Key key, this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Moviedetail(movie: movie)));
        },
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                )),
              ),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    movie.poster_path,
                    height: 100.0,
                    width: 100.0,
                  )),
            ])));
  }
}
