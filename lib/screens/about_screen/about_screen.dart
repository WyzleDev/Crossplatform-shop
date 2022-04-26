import 'package:flutter/material.dart';
import 'package:foxgold1/screens/about_screen/components/body.dart';
import 'package:foxgold1/screens/cart/cart_screen.dart';
import 'package:get/get.dart';
import '../cart/components/cart_controller.dart';

class AboutScreen extends StatelessWidget {
  final cartController = Get.put(CartController());

  AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (cartController.products.length > 0) {
                  Get.to(const CartScreen());
                }else{
                  Get.snackbar("Упс", "Похоже в корзине еще пусто");
                }
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.pinkAccent,
      body: BodyAbout(),
    );
  }
}
