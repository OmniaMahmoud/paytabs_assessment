import 'product.dart';

class ProductResponse {
  final List<Product?>? products;
  final int? total;
  final int? skip;
  final int? limit;

  ProductResponse({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) => ProductResponse(
    products: (json['products'] as List<dynamic>?)
        ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList(),
    total: json['total'],
    skip: json['skip'],
    limit: json['limit'],
  );
}