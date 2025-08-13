// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  const AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'd948369152c51a69ccd27ebef356a0611ffd7e1a';

@ProviderFor(tmdbRepository)
const tmdbRepositoryProvider = TmdbRepositoryProvider._();

final class TmdbRepositoryProvider
    extends $FunctionalProvider<TmdbRepository, TmdbRepository, TmdbRepository>
    with $Provider<TmdbRepository> {
  const TmdbRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tmdbRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tmdbRepositoryHash();

  @$internal
  @override
  $ProviderElement<TmdbRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TmdbRepository create(Ref ref) {
    return tmdbRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TmdbRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TmdbRepository>(value),
    );
  }
}

String _$tmdbRepositoryHash() => r'8575399c7b57ab3c8330cd3256b551933ec80bd2';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
