import 'api_error.dart';

class BaseApiResult<T> {
  T? data;
  String? successMessage;
  ApiError? error;


  BaseApiResult(
      {
        this.data,
        this.successMessage,
        this.error,
      });
}
