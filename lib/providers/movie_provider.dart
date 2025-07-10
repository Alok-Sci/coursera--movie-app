import 'dart:ffi';

import 'package:coursera__movie_app/models/movie.dart';
import 'package:coursera__movie_app/utils/movie_parser.dart';
import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movieList = [];

  List<Movie> get movieList => _movieList;

  Future<void> loadMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/movies.json');
      final movies = MovieParser.parser(jsonString);
      _movieList = movies;
      notifyListeners();
    } catch (e) {
      debugPrint("Caught exception while fetching movies: $e");
    }
  }
}
