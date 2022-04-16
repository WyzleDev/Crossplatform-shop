import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/screens/home_screen/components/open_social_networks.dart';
import 'package:foxgold1/screens/about_screen/components/certificates.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:foxgold1/screens/home_screen/components/open_social_networks.dart';

class BodyAbout extends StatelessWidget {
  const BodyAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.05,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: size.height,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(icon: const Icon(Icons.telegram_outlined), onPressed: ()=> launchURLTelegram(),),
                          IconButton(icon:const Icon(Icons.whatsapp_outlined), onPressed: ()=> launchURLWhatsApp(),)
                        ],
                      ),

                      Text(
                        "Обо мне",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      const Text(
                        "Меня зовут Александра, мне 18 лет. Я старший кондитер компании FOXGOLD. Очень люблю творчесвто и свое дело. Выполню работу любой сложности от праздничного торта до маленького набора для ваших самых любимых людей.",
                        style: TextStyle(fontSize: 15, height: 1.30),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Text(
                        "Сертификаты",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: kDefaultPadding),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.pinkAccent,
                                border: Border.all(
                                    width: 5, color: const Color(0xa8424141))),
                            height: 250,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageList.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {},
                                child: FullScreenWidget(
                                  disposeLevel: DisposeLevel.High,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: kDefaultPadding / 2),
                                    width: size.width,
                                    child: Image.asset(
                                      imageList[index],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  )),
              ImageWithHeader(),
            ]),
          ),
        ],
      ),
    );
  }
}

class ImageWithHeader extends StatelessWidget {
  const ImageWithHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "FOXGOLD",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Алекасндра Ларионова",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: "Кондитер",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Hero(
                      tag: "123",
                      child: CircleAvatar(
                        radius: 130,
                        backgroundImage: Image.asset(
                          "assets/image/C9WeG33vjJc.jpg",
                          fit: BoxFit.fill,
                        ).image,
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
