import 'package:southsea_cinema/models/Basket_item.dart';

class BasketRepository {
  static final BasketRepository instance = BasketRepository();

  List<BasketItem> _basketItems = [];

  void addItem(BasketItem item) {
    _basketItems.add(item);
  }

  List<BasketItem> getItems() {
    return _basketItems;
  }

  double TotalPrice() {
    double total = 0.0;
    for (BasketItem item in _basketItems) {
      total += item.price * item.tickets;
    }
    return total;
  }
}
