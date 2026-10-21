import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';
import 'package:southsea_cinema/widgets/Button_rounded.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int tickets = 1;
  int openheimerTickets = 1;
  String? message;

  @override
  Widget build(BuildContext context) {
    final movies = MoviesRepository().getMovies();
    return Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        drawer: const NavDrawer(),
        body: Container(
          color: cinemaSurface,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MoviesRepository().getMovies()[0].name,
                  style: TextStyle(fontSize: 34),
                ),
                SizedBox(width: 10),
                Text(
                  MoviesRepository().getMovies()[0].ageRating,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(MoviesRepository().getMovies()[0].description),
                SizedBox(height: 10),
                Image.asset(
                  MoviesRepository().getMovies()[0].imagePath,
                  width: 150,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                Text(
                  MoviesRepository().getMovies()[0].formattedPrice,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Text(
                  'Select number of tickets:',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 7),
                DropdownMenu<int>(
                  initialSelection: 1,
                  inputDecorationTheme: const InputDecorationTheme(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  textStyle: const TextStyle(color: Colors.black),
                  menuStyle: const MenuStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  helperText: 'Select tickets',
                  onSelected: (int? value) {
                    if (value != null) {
                      setState(() {
                        tickets = value;
                      });
                    }
                  },
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: 1, label: '1'),
                    DropdownMenuEntry(value: 2, label: '2'),
                    DropdownMenuEntry(value: 3, label: '3'),
                    DropdownMenuEntry(value: 4, label: '4'),
                    DropdownMenuEntry(value: 5, label: '5'),
                  ],
                ),
                const SizedBox(height: 10),
                Button_rounded(
                  label: 'Add',
                  onPressed: () {
                    setState(() {
                      message = 'Add button pressed!';
                    });
                  },
                ),
                if (message != null)
                  Text(
                    message!,
                    style: const TextStyle(
                      color: cinemaFontWhite,
                      fontSize: 16,
                    ),
                  ),
                const SizedBox(height: 20),
                const SizedBox(height: 15),
                Text(
                  movies[1].name,
                  style: const TextStyle(fontSize: 34),
                ),
                Text(
                  movies[1].ageRating,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(movies[1].description),
                const SizedBox(height: 10),
                Image.asset(
                  movies[1].imagePath,
                  width: 150,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                Text(
                  movies[1].formattedPrice,
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(height: 7),
                DropdownMenu<int>(
                  initialSelection: 1,
                  inputDecorationTheme: const InputDecorationTheme(
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  textStyle: const TextStyle(color: Colors.black),
                  menuStyle: const MenuStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  helperText: 'Select tickets',
                  onSelected: (int? value) {
                    if (value != null) {
                      setState(() {
                        openheimerTickets = value;
                      });
                    }
                  },
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: 1, label: '1'),
                    DropdownMenuEntry(value: 2, label: '2'),
                    DropdownMenuEntry(value: 3, label: '3'),
                    DropdownMenuEntry(value: 4, label: '4'),
                    DropdownMenuEntry(value: 5, label: '5'),
                  ],
                ),
                const SizedBox(height: 10),
                Button_rounded(
                  label: 'Add',
                  onPressed: () {
                    setState(() {
                      message = 'Add button pressed!';
                    });
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
