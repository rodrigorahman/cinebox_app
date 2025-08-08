// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(loginViewModel)
const loginViewModelProvider = LoginViewModelProvider._();

final class LoginViewModelProvider
    extends $FunctionalProvider<LoginViewModel, LoginViewModel, LoginViewModel>
    with $Provider<LoginViewModel> {
  const LoginViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginViewModelHash();

  @$internal
  @override
  $ProviderElement<LoginViewModel> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginViewModel create(Ref ref) {
    return loginViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginViewModel>(value),
    );
  }
}

String _$loginViewModelHash() => r'8de5261c532cb239dc4dc5c6c74b8917915c35d6';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
