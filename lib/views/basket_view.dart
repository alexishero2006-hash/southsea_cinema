import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class BasketView extends StatefulWidget {
  const BasketView();

  @override
  State<BasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<BasketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),

      appBar: AppBar(
        title: const Text(appTitle),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 20),

            const Text(
              'MY ORDER',
              style: TextStyle(
                color: cinemaFontWhite,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 30),

            // Table headings
            const Row(
              children: [
                Expanded(child: Text('Item')),
                Expanded(child: Text('Details')),
                Expanded(child: Text('Price')),
              ],
            ),

            const SizedBox(height: 20),

            const Divider(),

            const Row(
              children: [
                Expanded(child: Text('0 Tickets')),
                Expanded(child: Text('The Phantom of the Opera')),
                Expanded(child: Text('£12.00')),
              ],
            ),

            const SizedBox(height: 30),

            // Second ticket
            const Row(
              children: [
                Expanded(child: Text('3 Tickets')),
                Expanded(child: Text('Halloween 1978')),
                Expanded(child: Text('£18.00')),
              ],
            ),

            const SizedBox(height: 20),

            const Divider(),

            const SizedBox(height: 20),

            // Service charge
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Service Charge'),
                Text('£4.00'),
              ],
            ),

            const SizedBox(height: 20),

            // Total
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Due',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '£34.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('UPDATE ORDER'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('BUY TICKETS'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}