class Movie {
  int? id;
  String? title;
  double? voteAverage;
  String? overview;
  String? posterPath;

  Movie(this.id, this.overview, this.posterPath, this.title, this.voteAverage);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.voteAverage = parsedJson['voteaverage'] * 1.0;
    this.overview = parsedJson['overview'];
    this.posterPath = parsedJson['posterpath'];
  }
}
