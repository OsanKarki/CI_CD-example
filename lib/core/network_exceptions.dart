import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.internalServerError() = _InternalServerError;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static String message(NetworkExceptions exceptions) {
    return exceptions.when(
        internalServerError: () => "Internal server error",
        noInternetConnection: () => "No Internet Connections",
        unexpectedError: () => "Un-Expected Error Occured");
  }
}
