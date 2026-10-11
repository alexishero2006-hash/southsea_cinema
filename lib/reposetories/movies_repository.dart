import 'package:southsea_cinema/models/movies.dart';

class MoviesRepository {
  List<Movies> getMovies() {
    return const [
      Movies(
          id: 'interstellar',
          name: 'Interstellar',
          description:
              'A team of explorers travels through a wormhole in space in search of a new home for humanity.',
          imagePath: 'assets/images/interstellar.jpg',
          ageRating: 'PG-13',
          showTime: '7:00 PM',
          price: 8.50),
      Movies(
          id: 'openheimer',
          name: 'Openheimer (PG-13)',
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

  Movies? getMoviesByAgeRating(String age_rating) {
    for (final movie in getMovies()) {
      if (movie.ageRating == age_rating) {
        return movie;
      }
    }
    return null;
  }

  Movies? getMoviesUnderPrice(double maxPrice) {
    for (final movie in getMovies()) {
      if (movie.price < maxPrice) {
        return movie;
      }
    }
    return null;
  }
}
