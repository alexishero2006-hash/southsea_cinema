import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _totalPrice = 0;

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
              style: TextStyle(fontSize: 20),
                ),
            Text(
               'Thursday, 20th June 2027, 20:00 - ends at 22:30',
             style: TextStyle(fontSize: 20),
                ), 
                SizedBox(height: 35),
             Text(
               'Select tickets(Up to 5 per order) , Membership discount available only at the entrance',
             style: TextStyle(fontSize: 15),),
             SizedBox(height: 15),


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
                      _totalPrice = value;
                    });
                  }
                },
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: '1'),
                  DropdownMenuEntry(value: 2, label: '2'),
                  DropdownMenuEntry(value: 3, label: '3'),
                  DropdownMenuEntry(value: 4, label: '4'),
                  DropdownMenuEntry(value: 5, label: '5'),
                ]
              )
              
   ],
           
          
        ),
      ),
    );
  }
}
