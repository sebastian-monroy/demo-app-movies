import 'package:flutter/material.dart';


class MovieSilder extends StatelessWidget {
  const MovieSilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('listado', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => _MoviePoster()
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      width: 130,
      height: 190,
      color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'), 
            image: NetworkImage('https://via.placeholder.com/1280x720'),
            width: 130,
            height: 190,
            fit: BoxFit.cover,
          ),

          Text('starwars')
        ],
      ),
    );
  }
}