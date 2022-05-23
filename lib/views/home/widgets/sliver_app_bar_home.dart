import 'package:flutter/material.dart';

class SliverAppBarHome extends StatelessWidget {
  const SliverAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text(
        'CLOTHESSTORE',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
      toolbarHeight: 80,
      centerTitle: true,
      pinned: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      bottom: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 2, color: Colors.black),
          insets: EdgeInsets.symmetric(horizontal: 15),
        ),
        tabs: [
          Tab(text: ("DESTACADOS")),
          Tab(text: ("CATEGORÍAS")),
          Tab(text: ("PARA ELLA")),
        ],
      ),
    );
  }
}
