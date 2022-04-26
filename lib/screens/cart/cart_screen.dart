import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/cart/components/CartProducts.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:foxgold1/screens/cart/components/cart_total.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CartProducts(),
          CartTotal(),
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  final cartController = Get.put(CartController());
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.black,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: const Center(
      child: Text("Корзина", style: TextStyle(color: kTextColor)),
    ),
    actions: [
      IconButton(
          onPressed: () => cartController.deleteAll(context),
          icon: const Icon(
            Icons.delete_forever_outlined,
            color: Colors.black,
          ))
    ],
  );
}
