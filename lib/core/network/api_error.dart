import 'error_type.dart';

class ApiError {
  ErrorType? type;
  final String? message;

  ApiError({this.type, this.message});
}
