import 'package:coursera__movie_app/providers/movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).loadMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // * load movies from movie provider
    final movieList = Provider.of<MovieProvider>(context).movieList;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        shrinkWrap: true,
        itemBuilder: (ctx, idx) {
          final movie = movieList[idx];
          return Card(
            child: ExpansionTile(
              title: Text(movie.title ?? ""),
              subtitle: Text("Director: ${movie.director}"),
              leading: CircleAvatar(
                child: Text(movie.title?[0] ?? ""),
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
                            // navigate to detail screen
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
