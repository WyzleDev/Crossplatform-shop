import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/cart/cart_screen.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:foxgold1/screens/home_screen/components/body.dart';
import 'package:get/get.dart';
import 'package:foxgold1/screens/home_screen/components/open_social_networks.dart';

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
            Get.defaultDialog(
              title: "О нас",
              middleText:
                  "FOXGOLD - это магазин кондитерских изделий и не только",
              barrierDismissible: true,
              content: Column(
                children: [
                  const Text("wkbeuhabirguhaebirg"),
                  const SizedBox(
                    height: kDefaultPadding / 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            launchURLTelegram();
                          },
                          icon: const Icon(Icons.telegram_outlined)),
                      IconButton(
                          onPressed: () {
                            launchURLWhatsApp();
                          },
                          icon: const Icon(Icons.whatsapp_outlined)),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        launchURLTechSupport();
                      },
                      child: Text("Тех. поддержка"))
                ],
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding / 2),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_sharp,
                  color: kTextColor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            child: IconButton(
                onPressed: () {
                  if (cartController.products.length > 0) {
                    Get.to(() => CartScreen());
                  } else {
                    return;
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
      body: const Body(),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.question_answer_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
