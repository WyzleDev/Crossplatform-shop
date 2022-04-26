import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:get/get.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Итог",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                ),
                Text(
                  controller.total,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: SizedBox(
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    child: Text(
                      "Оплатить".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Get.snackbar("Ошибка",
                          "Просим прощения, но в данный момент функция оплаты не доступна!",
                          snackStyle: SnackStyle.FLOATING,
                          showProgressIndicator: true,
                          snackPosition: SnackPosition.BOTTOM,
                          duration: const Duration(seconds: 4));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
