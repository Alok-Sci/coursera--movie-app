import 'package:coursera__movie_app/models/movie.dart';
import 'package:coursera__movie_app/pages/movie_details_page.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Card(
      child: ExpansionTile(
        title: Text(movie.title ?? ""),
        subtitle: Text("Director: ${movie.director}"),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(movie.images?.first ?? ""),
        ),
        onExpansionChanged: (isExpanded) {},
        children: [
          Padding(
            padding: EdgeInsets.only(left: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Release: ${movie.released}",
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RichText(
                  softWrap: true,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Plot: ",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "${movie.plot}",
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    child: Text("Read More"),
                    onPressed: () {
                      // Navigate to detail screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MovieDetailsPage(movie: movie);
                          },
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
