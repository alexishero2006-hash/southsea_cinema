import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movies.dart';

void main() {
  const movie = Movies(
    id: '1',
    name: 'Interstellar',
    description: 'Sci-fi',
    imagePath: 'assets/images/interstellar.jpg',
    ageRating: 'PG',
    showTime: '20:00',
    price: 6.5,
  );

  test('Movie name', () {
    expect(movie.name, 'Interstellar');
  });

  test('Formatted price', () {
    expect(movie.formattedPrice, '£6.50');
  });

  test('Child friendly', () {
    expect(movie.isChildFriendly, true);
  });
 
  test('Adult only', () {
  expect(movie.isAdultOnly, false);
  });
}