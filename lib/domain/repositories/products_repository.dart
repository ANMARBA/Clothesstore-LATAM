import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

abstract class ProductsRepository {
  Future<List<Product>> getProducts();
  Future<List<Product>> getSearchProducts({String search = ''});
}
