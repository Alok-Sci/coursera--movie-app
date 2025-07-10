class Movie {
  String? title;
  String? year;
  String? rated;
  String? released;
  String? runtime;
  String? genre;
  String? director;
  String? writer;
  String? actors;
  String? plot;
  String? language;
  String? country;
  String? awards;
  String? poster;
  String? metascore;
  String? imdbRating;
  String? imdbVotes;
  String? imdbID;
  String? type;
  String? response;
  List<String>? images;

  Movie({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.response,
    this.images,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        title: json['Title'],
        year: json['Year'],
        rated: json['Rated'],
        released: json['Released'],
        runtime: json['Runtime'],
        genre: json['Genre'],
        director: json['Director'],
        writer: json['Writer'],
        actors: json['Actors'],
        plot: json['Plot'],
        language: json['Language'],
        country: json['Country'],
        awards: json['Awards'],
        poster: json['Poster'],
        metascore: json['Metascore'],
        imdbRating: json['imdbRating'],
        imdbVotes: json['imdbVotes'],
        imdbID: json['imdbID'],
        type: json['Type'],
        response: json['Response'],
        images: json['Images'].cast<String>(),
      );

  Map<String, dynamic> toJson() {
    return {
      'Title': title,
      'Year': year,
      'Rated': rated,
      'Released': released,
      'Runtime': runtime,
      'Genre': genre,
      'Director': director,
      'Writer': writer,
      'Actors': actors,
      'Plot': plot,
      'Language': language,
      'Country': country,
      'Awards': awards,
      'Poster': poster,
      'Metascore': metascore,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
      'imdbID': imdbID,
      'Type': type,
      'Response': response,
      'Images': images,
    };
  }
}
