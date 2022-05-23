import 'package:flutter/material.dart';

import 'package:clothesstore_latam/views/home/widgets/body_home.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            MainBannerHome(),
            CarouselHome(),
          ],
        ),
      ),
    );
  }
}
