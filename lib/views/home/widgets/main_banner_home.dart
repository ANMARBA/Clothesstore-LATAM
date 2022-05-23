import 'package:flutter/material.dart';

class MainBannerHome extends StatelessWidget {
  const MainBannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      child: Image.asset(
        "assets/main_banner_home.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
