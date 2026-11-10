import '../Models/cart_item.dart';

class Cart {
  List<CartItem> items = [];
  double get subtotal {
    double total = 0;
    for (var item in items) {
      total += item.product.price * item.quantity;
    }
    return total;
  }
  double get shipping => subtotal == 500 ? 0.0 : 50.0;
  double get totalPrice => subtotal + shipping;
}
