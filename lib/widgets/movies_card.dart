import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';

class MoviesCard extends StatelessWidget {
  final Movies movie;

  const MoviesCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              movie.imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.description,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    movie.ageRating,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    movie.showTime ?? '',
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Book Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
