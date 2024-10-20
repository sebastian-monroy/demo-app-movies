import 'dart:convert';

class Movie {
  final bool adult;
  String? backdropPath; // Nullable
  final List<int> genreIds;
  final int id;
  final String originalLanguage; // Corregido el nombre de la variable
  final String originalTitle;
  final String overview;
  final double popularity;
  String? posterPath; // Nullable
  String? releaseDate; // Nullable
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  Movie({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  // Deserializa desde una cadena JSON
  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  // Deserializa desde un mapa
  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
    adult: json["adult"] ?? false, // Valor por defecto si falta
    backdropPath: json["backdrop_path"] ?? null, // Valor por defecto si falta
    genreIds: List<int>.from(json["genre_ids"]?.map((x) => x) ?? []), // Manejo de posibles null
    id: json["id"] ?? 0, // Valor por defecto si falta
    originalLanguage: json["original_language"] ?? '', // Valor por defecto si falta
    originalTitle: json["original_title"] ?? '', // Valor por defecto si falta
    overview: json["overview"] ?? '', // Valor por defecto si falta
    popularity: (json["popularity"]?.toDouble() ?? 0.0), // Valor por defecto si falta
    posterPath: json["poster_path"] ?? null, // Valor por defecto si falta
    releaseDate: json["release_date"] ?? null, // Valor por defecto si falta
    title: json["title"] ?? '', // Valor por defecto si falta
    video: json["video"] ?? false, // Valor por defecto si falta
    voteAverage: (json["vote_average"]?.toDouble() ?? 0.0), // Valor por defecto si falta
    voteCount: json["vote_count"] ?? 0, // Valor por defecto si falta
  );
}
