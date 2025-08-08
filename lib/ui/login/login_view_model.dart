import 'package:cinebox/ui/login/commands/login_with_google_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_view_model.g.dart';

class LoginViewModel {
  final LoginWithGoogleCommand _loginWithGoogleCommand;

  LoginViewModel({required LoginWithGoogleCommand loginWithGoogleCommand})
    : _loginWithGoogleCommand = loginWithGoogleCommand;

  void googleLogin() {
    _loginWithGoogleCommand.execute();
  }
}

@riverpod
LoginViewModel loginViewModel(Ref ref) {
  return LoginViewModel(
    loginWithGoogleCommand: ref.read(loginWithGoogleCommandProvider.notifier),
  );
}
