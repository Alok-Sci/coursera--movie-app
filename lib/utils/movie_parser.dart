import 'dart:convert';

import 'package:coursera__movie_app/models/movie.dart';

class MovieParser {
  static List<Movie> parser(String jsonString) {
    final List<dynamic> parsedJson = json.decode(jsonString);
    return parsedJson
        .map((item) => Movie.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}