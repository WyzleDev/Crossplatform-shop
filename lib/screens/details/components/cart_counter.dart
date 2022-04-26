import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(icon: Icons.remove, press: () {
          setState(() {
            if (numOfItems > 1){
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(icon: Icons.add, press: (){
          setState((){
            numOfItems++;
          });
        })
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        child: Icon(icon),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}
