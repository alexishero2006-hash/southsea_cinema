import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';

void main() {
  group('Repository methods', () {
    test('Find movie by ID', () {
      final repository = MoviesRepository();

      expect(repository.getMovieById('1')?.name, equals('Interstellar'));
      expect(repository.getMovieById('999'), isNull);
    });

    test('Filter by price', () {
      final repository = MoviesRepository();
      final movies = repository.getMoviesUnderPrice(10.0);

      expect(movies, isNotEmpty);
    });

  testWidgets('Load movies from JSON asset', (tester) async {
  final repository = MoviesRepository();

  final movies = await repository.loadMoviesFromAsset();

  expect(movies.length, 2);
  expect(movies[0].name, 'Interstellar');
  expect(movies[1].name, 'Oppenheimer');
});
  });
}
