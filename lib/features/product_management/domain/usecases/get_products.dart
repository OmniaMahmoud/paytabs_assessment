import 'package:paytabs_assessment/core/network/base_api_result.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product_response.dart';
import 'package:paytabs_assessment/features/product_management/domain/repositories/product_repository.dart';

class GetProducts {
  ProductRepository repository;

  GetProducts(this.repository);

  Future<BaseApiResult<ProductResponse>> call(
      {int? page, int? limit, String? searchQuery}) async {
    return await repository.getProducts(
      page: page,
      limit: limit,
      searchQuery: searchQuery
    );
  }
}