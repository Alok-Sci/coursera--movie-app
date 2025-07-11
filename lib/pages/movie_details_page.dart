import 'package:coursera__movie_app/models/movie.dart';
import 'package:coursera__movie_app/movie_card.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Details"),
      ),
      body: Center(
        child: Column(
          children: [
            MovieCard(movie: movie)
          ],
        ),
      ),
    );
  }
}
