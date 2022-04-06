import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:get/get.dart';
class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Container(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Итог", style: Theme.of(context).textTheme.headline5?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),),
            Text(controller.total, style: Theme.of(context).textTheme.headline5?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
