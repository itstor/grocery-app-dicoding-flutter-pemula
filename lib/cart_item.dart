import 'package:submission_pemula/models/product_model.dart';

class CartItemModel {
  final ProductModel item;
  int quantity;

  CartItemModel({required this.item, required this.quantity});
}

class CartItem {
  static final CartItem instance = CartItem._internal();
  Map<int, CartItemModel> _items = {};

  Map<int, CartItemModel> get items => _items;

  factory CartItem() {
    return instance;
  }

  CartItem._internal();

  addItem(ProductModel item) {
    if (_items.containsKey(item.id)) {
      _items.update(
        item.id,
        (value) => CartItemModel(
          item: item,
          quantity: value.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        item.id,
        () => CartItemModel(
          item: item,
          quantity: 1,
        ),
      );
    }
  }

  int totalItem(){
    return _items.values.fold(0, (sum, item) => sum + item.quantity);
  }

  int totalPrice(){
    return _items.values.fold(0, (sum, item) => sum + item.item.productPrice * item.quantity);
  }
}
