import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  List<String> _movieList = <String>[
    "The Shawshank Redemption",
    "Interstellar",
    "Inception",
    "The Godfather",
    "The Godfather: Part II",
    "The Pursuit of Happiness",
    "Into the wild",
  ];

  List<String> get movieList => _movieList;

  List<String> loadMovies() {
    return _movieList;
  }
}
