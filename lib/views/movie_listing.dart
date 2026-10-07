import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});
  

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int tickets = 1;
  String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        color: cinemaSurface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Interstellar(2024)',
                  style: TextStyle(fontSize: 34),
                ),
                SizedBox(width: 10),
                Text(
                  '(PG-13)',
                  style: TextStyle(fontSize: 34),
                ),
              ],
            ),
            Text(
                'A team of explorers travels through a wormhole in space in search of a new home for humanity as Earth becomes increasingly uninhabitable.'),
            SizedBox(height: 45),
            Text(
              'Southsea Cinema Room',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Thursday, 20th June 2027, 20:00 - ends at 22:30',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 35),
            Text(
              'Select tickets(Up to 5 per order) , Membership discount available only at the entrance',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 35),
            DropdownMenu<int>(
                initialSelection: 1,
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: Colors.white,
                ),
                menuStyle: MenuStyle(
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
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: '1'),
                  DropdownMenuEntry(value: 2, label: '2'),
                  DropdownMenuEntry(value: 3, label: '3'),
                  DropdownMenuEntry(value: 4, label: '4'),
                  DropdownMenuEntry(value: 5, label: '5'),
                ]),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = 'Add button pressed!';
                });
              },
              child: const Text('Add'),
            ),
            if (message != null)
              Text(
                message!,
                style: const TextStyle(
                  color: cinemaFontWhite,
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
