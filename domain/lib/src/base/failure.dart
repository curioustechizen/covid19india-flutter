abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

//TODO: Make this use @freezed annotation when there's more clarity on how to use it
// see https://github.com/rrousselGit/freezed/issues/141
class NetworkFailure implements Failure {
  final String _errorMessage;
  final Error cause;

  NetworkFailure(this._errorMessage, this.cause);

  @override
  String get errorMessage => _errorMessage;

  @override
  String toString() {
    // TODO: implement toString
    return '''
    Message: $errorMessage
    Root cause: ${cause?.stackTrace}
    ''';
  }
}


//TODO: Find a way to pass generic Void to a method.
class Empty{}