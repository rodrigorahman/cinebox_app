import 'package:cinebox/core/result/result.dart';

abstract interface class AuthRepository {
  Future<Result<Unit>> signIn();
  Future<Result<Unit>> signOut();
  Future<Result<bool>> isLogged();
}
