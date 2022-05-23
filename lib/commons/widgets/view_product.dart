import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

class ViewProduct extends StatelessWidget {
  final Product product;
  const ViewProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: FadeInImage.memoryNetwork(
                  image: product.thumbnail,
                  placeholder: kTransparentImage,
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title),
                    const SizedBox(height: 10),
                    RatingBar.builder(
                      initialRating: Random().nextDouble() * 5,
                      minRating: 1,
                      itemSize: 15,
                      ignoreGestures: true,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) =>
                          const Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) => {},
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '\$${NumberFormat("#,##0", "es_CO").format(product.price)}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff5B17AA),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
