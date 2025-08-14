import 'package:cinebox/core/result/result.dart';

abstract interface class GoogleSigninService {
  Future<Result<String>> signIn();
  Future<Result<Unit>> signOut();
  Future<Result<String>> isSignedIn();
}
