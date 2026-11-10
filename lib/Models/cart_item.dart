import '../Models/product.dart';

class CartItem {
  int quantity;
  final Product product;
  CartItem({this.quantity = 1, required this.product});
}
