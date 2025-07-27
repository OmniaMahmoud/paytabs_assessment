import 'api_constants.dart';

enum ErrorType {
  noNetworkError,
  sendTimeoutError,
  receiveTimeoutError,
  connectionTimeoutError,
  connectionError,
  invalidData,
  notFound,
  serverError,
  unknownError;

  static ErrorType? getTypeFromCode(
      {required int? statusCode}) {
    if (statusCode == ApiConstants.badRequestError) {
      return ErrorType.invalidData;
    } else if (statusCode == ApiConstants.notFoundError) {
      return ErrorType.notFound;
    } else if (statusCode == ApiConstants.serverError) {
      return ErrorType.serverError;
    } else {
      return ErrorType.unknownError;
    }
  }

  // String? get title {
  //   switch (this) {
  //     case ErrorType.noNetworkError:
  //       return LocaleKeys.no_network_title(context: null);
  //     case ErrorType.sendTimeoutError:
  //       return LocaleKeys.send_timeout_error_title(context: null);
  //     case ErrorType.receiveTimeoutError:
  //       return LocaleKeys.receive_timeout_error_title(context: null);
  //     case ErrorType.connectionTimeoutError:
  //       return LocaleKeys.connection_timeout_error_title(context: null);
  //     case ErrorType.connectionError:
  //       return LocaleKeys.connection_error_title(context: null);
  //     case ErrorType.generalError:
  //       return LocaleKeys.error(context: null);
  //     case ErrorType.serverError:
  //       return LocaleKeys.server_error_title(context: null);
  //     case ErrorType.maintenanceError:
  //       return LocaleKeys.under_maintenance_error_title(context: null);
  //     case ErrorType.routeNotFound:
  //       return LocaleKeys.page_not_found(context: null);
  //     default:
  //       return LocaleKeys.error(context: null);
  //   }
  // }
  //
  // String? get description {
  //   switch (this) {
  //     case ErrorType.noNetworkError:
  //       return LocaleKeys.no_network_description(context: null);
  //     case ErrorType.sendTimeoutError:
  //       return LocaleKeys.send_timeout_error_description(context: null);
  //     case ErrorType.receiveTimeoutError:
  //       return LocaleKeys.receive_timeout_error_description(context: null);
  //     case ErrorType.connectionTimeoutError:
  //       return LocaleKeys.connection_timeout_error_description(context: null);
  //     case ErrorType.connectionError:
  //       return LocaleKeys.connection_error_description(context: null);
  //     case ErrorType.generalError:
  //       return LocaleKeys.general_error_description(context: null);
  //     case ErrorType.serverError:
  //       return LocaleKeys.server_error_description(context: null);
  //     case ErrorType.maintenanceError:
  //       return LocaleKeys.under_maintenance_error_description(context: null);
  //     case ErrorType.routeNotFound:
  //       return LocaleKeys.we_are_sorry(context: null);
  //     default:
  //       return '';
  //   }
  // }
  //
  // String get imagePath {
  //   switch (this) {
  //     case ErrorType.noNetworkError:
  //       return Assets.images.networkError.path;
  //     case ErrorType.sendTimeoutError:
  //       return Assets.images.networkError.path;
  //     case ErrorType.receiveTimeoutError:
  //       return Assets.images.networkError.path;
  //     case ErrorType.connectionTimeoutError:
  //       return Assets.images.networkError.path;
  //     case ErrorType.connectionError:
  //       return Assets.images.networkError.path;
  //     case ErrorType.generalError:
  //       return Assets.images.underMaintenance.path;
  //     case ErrorType.serverError:
  //       return Assets.images.underMaintenance.path;
  //     case ErrorType.maintenanceError:
  //       return Assets.images.underMaintenance.path;
  //     case ErrorType.routeNotFound:
  //       return Assets.images.underMaintenance.path;
  //     default:
  //       return Assets.images.networkError.path;
  //   }
  // }
  //
  // String get darkImagePath {
  //   switch (this) {
  //     case ErrorType.noNetworkError:
  //       return Assets.images.dark.networkError.path;
  //     case ErrorType.sendTimeoutError:
  //       return Assets.images.dark.networkError.path;
  //     case ErrorType.receiveTimeoutError:
  //       return Assets.images.dark.networkError.path;
  //     case ErrorType.connectionTimeoutError:
  //       return Assets.images.dark.networkError.path;
  //     case ErrorType.connectionError:
  //       return Assets.images.dark.networkError.path;
  //     case ErrorType.generalError:
  //       return Assets.images.dark.underMaintenance.path;
  //     case ErrorType.serverError:
  //       return Assets.images.dark.underMaintenance.path;
  //     case ErrorType.maintenanceError:
  //       return Assets.images.dark.underMaintenance.path;
  //     case ErrorType.routeNotFound:
  //       return Assets.images.dark.underMaintenance.path;
  //     default:
  //       return Assets.images.dark.networkError.path;
  //   }
  // }

}
