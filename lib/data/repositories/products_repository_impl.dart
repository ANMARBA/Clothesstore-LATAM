import 'package:clothesstore_latam/data/services/products_service_impl.dart';
import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;
import 'package:clothesstore_latam/domain/repositories/products_repository.dart';
import 'package:clothesstore_latam/domain/services/products_service.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsService productsService = ProductsServiceImpl();

  @override
  Future<List<Product>> getProducts() async {
    return await productsService.getProducts();
  }

  @override
  Future<List<Product>> getSearchProducts({String search = ''}) async {
    return await productsService.getSearchProducts(search: search);
  }
}
