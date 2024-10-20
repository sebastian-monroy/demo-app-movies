import 'dart:convert';
import 'package:movies_list_app/models/movie.dart';

class NowPlayingResponse {
  final Dates? dates;  // Cambiado a nullable en caso de que falte
  final int? page; // Puede ser null si no se recibe
  final List<Movie> results; // Lista de resultados
  final int? totalPages; // Puede ser null si no se recibe
  final int? totalResults; // Puede ser null si no se recibe

  NowPlayingResponse({
    this.dates,
    this.page,
    required this.results,
    this.totalPages,
    this.totalResults,
  });

  // Deserializa desde una cadena JSON
  factory NowPlayingResponse.fromJson(String str) => 
      NowPlayingResponse.fromMap(json.decode(str));

  // Deserializa desde un mapa
  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) => 
      NowPlayingResponse(
        dates: json["dates"] != null ? Dates.fromMap(json["dates"]) : null,
        page: json["page"] != null ? json["page"] : null,
        results: json["results"] != null 
            ? List<Movie>.from(json["results"].map((x) => Movie.fromMap(x)))
            : [],
        totalPages: json["total_pages"] != null ? json["total_pages"] : null,
        totalResults: json["total_results"] != null ? json["total_results"] : null,
      );
}

class Dates {
  final DateTime? maximum; // Cambiado a nullable en caso de que falte o no sea válido
  final DateTime? minimum;

  Dates({
    this.maximum,
    this.minimum,
  });

  // Deserializa desde una cadena JSON
  factory Dates.fromJson(String str) => Dates.fromMap(json.decode(str));

  // Deserializa desde un mapa
  factory Dates.fromMap(Map<String, dynamic> json) => Dates(
        maximum: json["maximum"] != null 
            ? DateTime.tryParse(json["maximum"]) 
            : null,
        minimum: json["minimum"] != null 
            ? DateTime.tryParse(json["minimum"]) 
            : null,
      );
}
