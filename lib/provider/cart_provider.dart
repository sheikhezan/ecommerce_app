import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';


class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List <Product> get cart => _cart ;

  void toggleProduct(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}

