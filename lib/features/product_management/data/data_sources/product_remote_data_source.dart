import 'package:paytabs_assessment/core/network/api_constants.dart';
import 'package:paytabs_assessment/core/network/api_methods.dart';
import 'package:paytabs_assessment/core/network/base_api_result.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product.dart';
import 'package:paytabs_assessment/features/product_management/data/models/product_response.dart';

class ProductRemoteDataSource {

  ApiMethods apiMethods;

  ProductRemoteDataSource(this.apiMethods);

  Future<BaseApiResult<ProductResponse>> getProducts({int? page, int? limit, String? searchQuery}) async {
    return await apiMethods.get<ProductResponse>(ApiConstants.products,
        params: {
          'page': page,
          'limit': limit,
          'q': searchQuery
        }
    );
  }
}