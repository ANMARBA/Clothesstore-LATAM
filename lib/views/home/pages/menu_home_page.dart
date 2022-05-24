import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:clothesstore_latam/views/catalogue/pages/catalogue_page.dart';
import 'package:clothesstore_latam/views/home/pages/home_page.dart';

class MenuHomePage extends StatefulWidget {
  const MenuHomePage({Key? key}) : super(key: key);

  @override
  State<MenuHomePage> createState() => _MenuHomePageState();
}

class _MenuHomePageState extends State<MenuHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[HomePage(), CataloguePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          menuItem(CupertinoIcons.home, 'INICIO'),
          menuItem(CupertinoIcons.search, 'CATÁLOGO'),
          menuItem(CupertinoIcons.heart, 'FAVORITOS'),
          menuItem(CupertinoIcons.cart, 'CARRITO'),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    if ([2, 3].contains(index)) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem menuItem(IconData? icon, String? label) {
    return BottomNavigationBarItem(
      icon: Padding(padding: const EdgeInsets.all(6), child: Icon(icon)),
      label: label,
    );
  }
}
