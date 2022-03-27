import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
        icon: const Icon(
        Icons.arrow_back_ios,
            color: kTextColor,
          ),
          onPressed: (){},
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
                onPressed: () {},
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
