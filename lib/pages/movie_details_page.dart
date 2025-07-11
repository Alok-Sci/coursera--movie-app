import 'package:coursera__movie_app/models/movie.dart';
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
        title: Text(movie.title ?? ""),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Plot"),
            Text(movie.plot ?? ""),
          ],
        ),
      ),
    );
  }
}
