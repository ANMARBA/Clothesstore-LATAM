import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

class ViewImageProduct extends StatelessWidget {
  final Product product;
  const ViewImageProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.infinity,
        child: FadeInImage.memoryNetwork(
          image: product.thumbnail,
          placeholder: kTransparentImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
