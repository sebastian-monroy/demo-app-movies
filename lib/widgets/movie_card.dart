import 'package:flutter/material.dart';
import 'package:movies_list_app/models/movie.dart';
import 'package:movies_list_app/providers/movies_provider.dart';
import 'package:movies_list_app/screens/details_screen.dart';
import 'package:provider/provider.dart';


class MovieCard extends StatelessWidget {

  final List<Movie> movies;

  const MovieCard({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Icon(Icons.movie),
      title: Text('titulo'),
      subtitle: Text('descripcion'),  
    );
    
    
    //   // child: ListTile(
      //   //   leading: movie.posterPath.isNotEmpty
      //   //       ? Image.network('https://image.tmdb.org/t/p/w200${movie.posterPath}')
      //   //       : Icon(Icons.movie),
      //   //   title: Text(movie.title),
      //   //   subtitle: Text('Release Date: ${movie.releaseDate}'),
      //   //   onTap: () {
      //   //     Navigator.push(
      //   //       context,
      //   //       MaterialPageRoute(builder: (context) => DetailsScreen(movie: movie)),
      //   //     );
      //   //   },
      //   // ),
  }
}
