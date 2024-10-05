class Failure {
  String errorMessage;
  Failure({required this.errorMessage});
}

class ServerError extends Failure {
  ServerError({required super.errorMessage});
}

class NetworkEroor extends Failure {
  NetworkEroor({required super.errorMessage});
}
