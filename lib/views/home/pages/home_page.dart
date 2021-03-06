import 'package:flutter/material.dart';
import 'package:clothesstore_latam/views/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext sliverContext, __) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  sliverContext),
              sliver: const SliverAppBarHome(),
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
