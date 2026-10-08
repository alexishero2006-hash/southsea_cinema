import 'package:southsea_cinema/models/movies.dart';

class MoviesRepository {
  List<Movies> getmovies() {
    return const [
      Movies(
        id: 'interstellar',
        name: 'Interstellar',
        description:
            'A team of explorers travels through a wormhole in space in search of a new home for humanity.',
        imagePath: 'assets/images/interstellar.jpg',
      ),
      Movies(
        id: 'oppenheimer',
        name: 'Oppenheimer',
        description:
            'The story of J. Robert Oppenheimer and his role in the development of the atomic bomb.',
        imagePath: 'assets/images/oppenheimer.jpg',
      ),
    ];
  }
}
