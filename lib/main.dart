import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  final _movieList = <String>[
    "The Shawshank Redemption",
    "Interstellar",
    "Inception",
    "The Godfather",
    "The Godfather: Part II",
    "The Pursuit of Happiness",
    "Into the wild",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView.builder(
              itemCount: _movieList.length,
              itemBuilder: (ctx, idx) {
                final _item = _movieList[idx];
                return ListTile(
                  title: Text(_item),
                  leading: Icon(Icons.movie_rounded),
                  trailing: Icon(Icons.arrow_right_alt_rounded),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
