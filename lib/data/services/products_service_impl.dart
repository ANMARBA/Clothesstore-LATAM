import 'package:clothesstore_latam/commons/api/api_manager.dart';
import 'package:clothesstore_latam/data/models/product_model.dart';
import 'package:clothesstore_latam/domain/entities/entities.dart';
import 'package:clothesstore_latam/domain/services/products_service.dart';

class ProductsServiceImpl implements ProductsService {
  final APIManager _apiManager = APIManager();
  final ProductModel _productModel = ProductModel();

  @override
  Future<List<Product>> getProducts() async {
    var data = await _apiManager.getAPICall(
      'https://api.mercadolibre.com/sites/MCO/search?category=MCO1430',
      timeLimit: const Duration(seconds: 60),
    );

    final List<Product> products = (data["results"] as List)
        .map((res) => _productModel.fromJson(res as Map<String, dynamic>))
        .toList();

    return Future.value(products);
  }

  @override
  Future<List<Product>> getSearchProducts({String search = ''}) async {
    var data = await _apiManager.getAPICall(
      'https://api.mercadolibre.com/sites/MCO/search?q=$search&category=MCO1430',
      timeLimit: const Duration(seconds: 60),
    );

    final List<Product> products = (data["results"] as List)
        .map((res) => _productModel.fromJson(res as Map<String, dynamic>))
        .toList();

    return Future.value(products);
  }
}
