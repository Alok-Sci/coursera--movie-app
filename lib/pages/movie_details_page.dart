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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MovieCard(
            movie: movie,
            isDetails: true,
          ),
          SizedBox(height: 20),
          Text(
            "Movie Images",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: movie.images!.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final image = movie.images![index];
                return Card(
                  elevation: 4.0,
                  child: Image.network(
                    image,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
