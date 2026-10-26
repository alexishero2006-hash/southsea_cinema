import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/reposetories/Basket_repository.dart';
import 'package:southsea_cinema/reposetories/movies_repository.dart';
import 'package:southsea_cinema/widgets/Button_rounded.dart';

class BasketView extends StatefulWidget {
  const BasketView();

  @override
  State<BasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<BasketView> {
  @override
  Widget build(BuildContext context) {
    final basketItems = BasketRepository.instance.getItems();
    final totalPrice = basketItems.fold<double>(
      4.0,
      (total, item) => total + item.price,
    );
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
            Row(
              children: [
                Expanded(child: Text('Item')),
                Expanded(child: Text('Details')),
                Expanded(child: Text('Price')),
              ],
            ),

            const SizedBox(height: 20),

            const Divider(),

            if (basketItems.isEmpty)
              const Expanded(
                child: Text(
                  'Your basket is empty.',
                  style: TextStyle(color: cinemaFontWhite),
                ),
              )
            else
              for (var item in basketItems)
                Row(
                  children: [
                    Expanded(child: Text('${item.tickets} tickets')),
                    Expanded(
                        child:
                            Text('${item.tickets} standard ${item.title}  ')),
                    Expanded(child: Text('£${item.price.toStringAsFixed(2)}')),
                    Button_rounded(label: "delete", 
                    onPressed: BasketRepository.instance.basketItems.clear  )
                  ],
                ),

            const SizedBox(height: 20),

            const Divider(),

            const SizedBox(height: 20),

            // Service charge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Service Charge'),
                Text('£4.00'),
              ],
            ),

            const SizedBox(height: 20),

            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Due',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '£ ${(totalPrice + 4).toStringAsFixed(2)} ',
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
