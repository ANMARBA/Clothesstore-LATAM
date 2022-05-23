import 'package:flutter/material.dart';
import 'package:clothesstore_latam/views/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (__, ___) {
          return <Widget>[
            const SliverAppBar(
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
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            BodyHomePage(),
            NotFoundPage(),
            NotFoundPage(),
          ],
        ),
      ),
    );
  }
}
