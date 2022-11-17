abstract class Failure implements Exception {
  final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errorMessage) : super(errorMessage);
}