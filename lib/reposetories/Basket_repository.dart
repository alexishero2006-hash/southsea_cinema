import 'package:southsea_cinema/models/Basket_item.dart';

class BasketRepository {
  static final BasketRepository instance = BasketRepository();

  List<BasketItem> basketItems = [];

  void addItem(BasketItem item) {
    for (var existingItem in basketItems) {
      if (existingItem.title == item.title) {
        basketItems[basketItems.indexOf(existingItem)] = BasketItem(
          title: existingItem.title,
          price: existingItem.price,
          tickets: existingItem.tickets + item.tickets,
        );

        return;
      }
    }

    basketItems.add(item);
  }

  List<BasketItem> getItems() {
    return basketItems;
  }

  double TotalPrice() {
    double total = 0.0;

    for (BasketItem item in basketItems) {
      total += item.price * item.tickets;
    }

    return total;
  }
}
