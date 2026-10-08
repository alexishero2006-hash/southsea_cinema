import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';

class MoviesCard extends StatelessWidget {
  final Movies movie;

  const MoviesCard({super.key, required this.movie});

    @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
