import 'package:cinebox/core/result/result.dart';

abstract interface class LocalStorageService {
  Future<Result<Unit>> saveIdToken(String token);
  Future<Result<String>> getIdToken();
  Future<Result<Unit>> removeIdToken();
}
