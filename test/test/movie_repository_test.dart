import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';
import 'package:southsea_cinema/models/movies.dart';

void main() {
  group('Repository methods', () {
    test('Find movie by ID', () {
      final repository = MoviesRepository();

      expect(repository.getMovieById('1')?.name, 'Interstellar');
      expect(repository.getMovieById('999'), null);
    });

    test('Filter by age rating', () {
      final repository = MoviesRepository();
      final movies = repository.getMoviesByAgeRating('PG');

      expect(movies, isNotEmpty);
    });

    test('Filter by price', () {
      final repository = MoviesRepository();
      final movies = repository.getMoviesUnderPrice(10.0);

      expect(movies, isNotEmpty);
    });
  });
}