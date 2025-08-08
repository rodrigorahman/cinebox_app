class DataException implements Exception {
  final String message;

  DataException({required this.message});

  @override
  String toString() {
    return 'DataException: $message';
  }
}
