class Product {
  final int? id;
  final String? title;
  final String? description;
  final String? category;
  final double? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final List<String?>? tags;
  final String? brand;
  final String? sku;
  final double? weight;
  final String? warrantyInformation;
  final String? shippingInformation;
  final String? availabilityStatus;
  final String? returnPolicy;
  final int? minimumOrderQuantity;
  final List<String?>? images;
  final String? thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    category: json['category'],
    price: (json['price'] as num?)?.toDouble(),
    discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
    rating: (json['rating'] as num?)?.toDouble(),
    stock: json['stock'],
    tags: json['tags'] != null ? List<String?>.from(json['tags']) : null,
    brand: json['brand'],
    sku: json['sku'],
    weight: (json['weight'] as num?)?.toDouble(),
    warrantyInformation: json['warrantyInformation'],
    shippingInformation: json['shippingInformation'],
    availabilityStatus: json['availabilityStatus'],
    returnPolicy: json['returnPolicy'],
    minimumOrderQuantity: json['minimumOrderQuantity'],
    images: json['images'] != null ? List<String>.from(json['images']) : null,
    thumbnail: json['thumbnail'],
  );
}