import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Торты",
    "Трюфели",
    "Подарочные наборы",
    "Шоколад"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index ? kTextColor : kTextLightColor),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                      height: 2,
                      width: 30,
                      color: selectedIndex == index
                          ? Colors.black
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}