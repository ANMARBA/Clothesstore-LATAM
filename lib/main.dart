import 'package:flutter/material.dart';

import 'package:clothesstore_latam/commons/widgets/custom_scroll_behavior.dart';
import 'package:clothesstore_latam/views/home/pages/menu_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: child!,
        );
      },
      title: 'Clothesstore',
      debugShowCheckedModeBanner: false,
      home: const MenuHomePage(),
    );
  }
}
