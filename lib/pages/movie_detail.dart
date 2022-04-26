import 'package:flutter/material.dart';
import 'package:httprequest/models/movie.dart';
//Jihan Rahadatul Aisy (2031710034)
//MI2F

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title + ' (Jihan.R.A)'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(16),
                  height: height / 1.5,
                  child: Image.network(path)),
              Container(
                child: Text(movie.overview,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                    textAlign: TextAlign.center),
                padding: const EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
