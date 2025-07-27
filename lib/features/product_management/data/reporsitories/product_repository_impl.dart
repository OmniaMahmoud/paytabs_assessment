import 'package:paytabs_assessment/core/network/base_api_result.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product_response.dart';
import 'package:paytabs_assessment/features/product_management/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<BaseApiResult<ProductResponse>> getProducts({int? page, int? limit, String? searchQuery}) {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}