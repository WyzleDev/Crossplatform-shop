

import 'package:foxgold1/models/product.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar("Продукт добавлен", "${product.title} добавлено в корзину",
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 1, milliseconds: 5));
  }

  removeProduct(Product product, context) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
      if(_products.isEmpty){
        Navigator.pop(context);
      }
    } else {
      _products[product] -= 1;
    }
  }
  deleteAll(context){
    _products = {}.obs;
    Navigator.pop(context);
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList().reduce((value, element) => value + element).toString();
}
