import 'package:paytabs_assessment/core/network/base_api_result.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product_response.dart';

abstract class ProductRepository {

  Future<BaseApiResult<ProductResponse>> getProducts({
    int? page,
    int? limit,
    String? searchQuery
  });

}
