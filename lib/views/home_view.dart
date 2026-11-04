import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';
import 'package:southsea_cinema/widgets/movies_card.dart';
import 'package:southsea_cinema/models/movies.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Movies> _movies = [];
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    Future<void> _loadMovies() async {
  try {
    final MoviesRepository repository = MoviesRepository();
    final List<Movies> movies = await repository.loadMoviesFromAsset();

    if (!mounted) {
  return;
}

  setState(() {
    _movies = movies;
    _isLoading = false;
});

  } catch (error) {

  }
}
    _loadMovies();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      drawer: const NavDrawer(),
      body: _isLoading
    ? const Center(
        child: CircularProgressIndicator(),
      )
    : _error != null
        ? Center(
            child: Text('Error: $_error'),
          )
        : Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to $appTitle',
                style: TextStyle(
                  color: cinemaFontWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MoviesCard(movie: _movies[0]),
              MoviesCard(movie: _movies[1]),
            ],
          ),
        ),
      ),
    );
  }
}
