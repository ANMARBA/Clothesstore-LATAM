import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final num price;
  final String thumbnail;
  final String title;

  const Product({
    required this.id,
    required this.price,
    required this.thumbnail,
    required this.title,
  });

  @override
  List<Object?> get props => [id, price, thumbnail, title];
}
