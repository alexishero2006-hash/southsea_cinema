import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

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
        color: const Color.fromARGB(255, 188, 146, 87),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Interstellar(2024)',
                  style: TextStyle(fontSize: 34),
                ),
                Text(
                  '(PG-13)',
                  style: TextStyle(fontSize : 34),
                  ),
              ],
            ),
            Text(
                'A team of explorers travels through a wormhole in space in search of a new home for humanity as Earth becomes increasingly uninhabitable.'),
            SizedBox(height: 25),
            Text(
                'Southsea Cinema Room',
              style: TextStyle(fontSize: 15),
                ),
            Text(
               'Thursday, 20th June 2027, 20:00 - ends at 22:30',
             style: TextStyle(fontSize: 15),
                ),
            
        
        ],
      ),
    ),
    );
  }
}
