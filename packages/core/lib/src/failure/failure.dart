sealed class Failure {
  final String message;

  const Failure({required this.message});
}

final class ApiFailure extends Failure {
  final int? statusCode;

  const ApiFailure({String? message, this.statusCode})
    : super(message: message ?? "Network Failure");
}

final class ConnectionFailure extends Failure {
  const ConnectionFailure({String? message})
    : super(message: message ?? "Connection Failure");
}

final class ParsingFailure extends Failure {
  const ParsingFailure({String? message})
    : super(message: message ?? "Parsing Failure");
}
