import 'package:flutter/material.dart';
import '../models/view.dart';

class Moviedetail extends StatelessWidget {
  final Movie movie;

  const Moviedetail({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Moviedetails"), actions: []),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              Text("movie id: ${movie.id}"),
              SizedBox(
                height: 12,
              ),
              Text("overview:${movie.overview}"),
              SizedBox(
                height: 12,
              ),
              Text(
                "movie title is:${movie.title}",
                textAlign: TextAlign.center,
              )
              child:IconButton(
                  icon:Icon(Icons.heart)
              )
            ])));
  }
}
