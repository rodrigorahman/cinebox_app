import 'dart:developer';

import 'package:cinebox/config/result/result.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './google_signin_service.dart';

class GoogleSigninServiceImpl implements GoogleSigninService {
  @override
  Future<Result<String>> isSignedIn() async {
    try {
      final logged = await GoogleSignIn.instance
          .attemptLightweightAuthentication();

      if (logged case GoogleSignInAccount(
        authentication: GoogleSignInAuthentication(:final idToken?),
      )) {
        return Success(idToken);
      }
      return Failure(Exception('User is not signed in Google'));
    } catch (e, s) {
      log(
        'User is not signed in Google',
        name: 'GoogleSignInService',
        error: e,
        stackTrace: s,
      );
      return Failure(Exception('User is not signed in Google'));
    }
  }

  @override
  Future<Result<String>> signIn() async {
    try {
      final auth = await GoogleSignIn.instance.authenticate(
        scopeHint: ['email', 'profile', 'openid'],
      );

      if (auth.authentication case GoogleSignInAuthentication(
        idToken: final idToken?,
      )) {
        return Success(idToken);
      }
      return Failure(
        Exception('Failed to retrive ID Token from Google Sign-In'),
      );
    } catch (e, s) {
      log(
        'Failed to retrive ID Token from Google Sign-In',
        name: 'GoogleSignInService',
        error: e,
        stackTrace: s,
      );
      return Failure(
        Exception('Failed to retrive ID Token from Google Sign-In'),
      );
    }
  }

  @override
  Future<Result<Unit>> signOut() async {
    try {
      await GoogleSignIn.instance.signOut();
      return successOfUnit();
    } catch (e, s) {
      log(
        'Google Sign-Out error',
        name: 'GoogleSignInService',
        error: e,
        stackTrace: s,
      );
      return Failure(
        Exception('Google Sign-out error'),
      );
    }
  }
}
