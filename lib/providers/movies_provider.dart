

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_list_app/models/models.dart';

class MoviesProvider extends ChangeNotifier {

  final String _apikey = 'b65f488d14ac62208f48402c06dbe173';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];


  MoviesProvider(){
    print('MoviesProvider inicializado');
    // getOnDisplayMovies();
  }
  getOnDisplayMovies()async{
    var url =
      Uri.https(this._baseUrl, '3/movie/now_playing', {
        '_apikey': _apikey,
        'language': _language,
        'page': '1'
    });

  // Await the http get response, then decode the json-formatted response.
  final response = await http.get(url);
  print(response.body);
  }

}