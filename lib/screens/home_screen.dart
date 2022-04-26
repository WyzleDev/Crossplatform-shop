import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/about_screen/about_screen.dart';
import 'package:foxgold1/screens/cart/cart_screen.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:foxgold1/screens/home_screen/components/body.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final cartController = Get.put(CartController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.info_outline,
            color: kTextColor,
          ),
          onPressed: () {
            Get.to(() => AboutScreen());
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            child: IconButton(
                onPressed: () {
                  if (cartController.products.length > 0) {
                    Get.to(() => const CartScreen());
                  } else {
                    Get.snackbar("Упс", "Похоже в корзине еще пусто");
                  }
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: kTextColor,
                )),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Body(),
    );
  }
}
