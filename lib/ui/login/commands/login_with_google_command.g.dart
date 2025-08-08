// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_google_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(LoginWithGoogleCommand)
const loginWithGoogleCommandProvider = LoginWithGoogleCommandProvider._();

final class LoginWithGoogleCommandProvider
    extends $NotifierProvider<LoginWithGoogleCommand, AsyncValue<void>> {
  const LoginWithGoogleCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginWithGoogleCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginWithGoogleCommandHash();

  @$internal
  @override
  LoginWithGoogleCommand create() => LoginWithGoogleCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<void> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<void>>(value),
    );
  }
}

String _$loginWithGoogleCommandHash() =>
    r'291fa1558db667f9ae3c13c687ebb31631c4b7d7';

abstract class _$LoginWithGoogleCommand extends $Notifier<AsyncValue<void>> {
  AsyncValue<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<void>, AsyncValue<void>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, AsyncValue<void>>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
