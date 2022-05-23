import 'package:clothesstore_latam/data/services/home_products_service_impl.dart';
import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;
import 'package:clothesstore_latam/domain/repositories/home_products_repository.dart';
import 'package:clothesstore_latam/domain/services/home_products_service.dart';

class HomeProductsRepositoryImpl implements HomeProductsRepository {
  final HomeProductsService homeProductsService = HomeProductsServiceImpl();

  @override
  Future<List<Product>> getProducts() async {
    return await homeProductsService.getProducts();
  }
}
