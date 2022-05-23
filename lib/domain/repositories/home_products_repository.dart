import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

abstract class HomeProductsRepository {
  Future<List<Product>> getProducts();
}
