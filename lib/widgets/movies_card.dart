import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';

class MoviesCard extends StatelessWidget {
  final Movies movie;

  const MoviesCard({super.key, required this.movie});

    @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
