import 'package:flutter/material.dart';

import 'package:clothesstore_latam/data/repositories/products_repository_impl.dart';
import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;
import 'package:clothesstore_latam/domain/repositories/products_repository.dart';

class HomeProductsProvider with ChangeNotifier {
  final ProductsRepository _productsRepository = ProductsRepositoryImpl();
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<List<Product>> viewProducts() async {
    try {
      List<Product> products = await _productsRepository.getProducts();
      _products = [...products];
    } catch (e) {
      debugPrint(e.toString());
    }

    return products;
  }
}
