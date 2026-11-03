import 'package:southsea_cinema/models/movies.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class MoviesRepository {
  List<Movies>? _cachedMovies;

  Future<List<Movies>> loadMoviesFromAsset() async {
    final jsonString = await rootBundle.loadString('assets/data/movies.json');
    final jsonList = json.decode(jsonString) as List;
    final loadedMovies = jsonList.map((json) => Movies.fromJson(json)).toList();
    _cachedMovies = loadedMovies;
    return loadedMovies;
  }

  List<Movies> getMovies() {
    return const [
      Movies(
          id: '1',
          name: 'INTERSTELLAR',
          description:
              'A team of explorers travels through a wormhole in space in search of a new home for humanity.',
          imagePath: 'assets/images/interstellar.jpg',
          ageRating: 'PG-13',
          showTime: '7:00 PM',
          price: 8.50),
      Movies(
          id: '2',
          name: 'OPENHEIMER',
          description:
              'The story of J. Robert Oppenheimer and his role in the development of the atomic bomb.',
          imagePath: 'assets/images/openheimer.jpg',
          ageRating: 'PG-13',
          showTime: '8:00 PM',
          price: 8.50),
    ];
  }

  Movies? getMovieById(String id) {
    for (final movie in getMovies()) {
      if (movie.id == id) {
        return movie;
      }
    }
    return null;
  }

  List<Movies> getMoviesByAgeRating(String rating) {
    return getMovies().where((movie) => movie.ageRating == rating).toList();
  }

  List<Movies> getMoviesUnderPrice(double maxPrice) {
    return getMovies().where((movie) => movie.price < maxPrice).toList();
  }
}
