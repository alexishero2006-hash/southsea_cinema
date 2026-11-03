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

  test('Movies.fromJson converts JSON correctly', () {
    final json = {
      'id': 'interstellar',
      'name': 'Interstellar',
      'description': 'Science fiction',
      'price': 8,
      'imagePath': 'assets/images/interstellar.jpg',
      'ageRating': '12A',
      'showTime': '18:00',
    };

    final movie = Movies.fromJson(json);

    expect(movie.id, 'interstellar');
    expect(movie.name, 'Interstellar');
    expect(movie.description, 'Science fiction');
    expect(movie.price, 8.0);
    expect(movie.imagePath, 'assets/images/interstellar.jpg');
    expect(movie.ageRating, '12A');
    expect(movie.showTime, '18:00');
  });

  test('Movies.toJson converts movie correctly', () {
  final json = movie.toJson();

  expect(json['id'], '1');
  expect(json['name'], 'Interstellar');
  expect(json['description'], 'Sci-fi');
  expect(json['imagePath'], 'assets/images/interstellar.jpg');
  expect(json['ageRating'], 'PG');
  expect(json['showTime'], '20:00');
  expect(json['price'], 6.5);
});
}
