import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

abstract class HomeProductsService {
  Future<List<Product>> getProducts();
}
