import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';

void main() {
  group('MoviesRepository tests', () {
    test('Repository returns two movies', () {
      final repository = MoviesRepository();
      final movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test('Repository contains Interstellar and Oppenheimer', () {
      final repository = MoviesRepository();
      final movies = repository.getMovies();

      expect(movies[0].name, 'Interstellar');
      expect(movies[1].name, 'Oppenheimer');
      expect(movies[0].imagePath, isNotEmpty);
      expect(movies[1].imagePath, isNotEmpty);
    });
  });
}