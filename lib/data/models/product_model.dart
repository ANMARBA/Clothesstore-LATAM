import 'package:clothesstore_latam/domain/entities/entities.dart' show Product;

class ProductModel {
  Product fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] as String,
        price: json["price"] as num,
        thumbnail: json["thumbnail"] as String,
        title: json["title"] as String,
      );
}
