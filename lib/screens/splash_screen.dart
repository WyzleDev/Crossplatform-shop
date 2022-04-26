import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 100,
            width: 100,
            child: Icon(Icons.home_outlined, color: Colors.black,),
          ),
          SizedBox(
            child: Text("FOXGOLD"),
          )
        ],
      ),
    );
  }
}
