import 'package:flutter/material.dart';

class CarouselHome extends StatelessWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (_, int indexItem) =>
                  _buildCarouselItem(indexItem + 1),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCarouselItem(int indexItem) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'assets/carousel_home_$indexItem.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
