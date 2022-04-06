import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/cart/cart_screen.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:foxgold1/screens/components/body.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            _launchURLTelegram();
                          },
                          icon: const Icon(Icons.telegram_outlined)),
                      IconButton(
                          onPressed: () {
                            _launchURLWhatsApp();
                          },
                          icon: const Icon(Icons.whatsapp_outlined)),
                    ],
                  ),
                  TextButton(onPressed: () {_launchURLTechSupport();}, child: Text("Тех. поддержка"))
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
                onPressed: () => Get.to(() => CartScreen()),
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

_launchURLTelegram() async {
  const url = 'https://t.me/foxgold_official';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLWhatsApp() async {
  const url = 'https://wa.me/+79096984591';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLTechSupport() async {
  const url = 'mailto:qertynon@gmail.com?subject=Вопрос по приложению FOXGOLD';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
