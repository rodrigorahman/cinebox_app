// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MoviesViewModel)
const moviesViewModelProvider = MoviesViewModelProvider._();

final class MoviesViewModelProvider
    extends $NotifierProvider<MoviesViewModel, MoviesViewEnum> {
  const MoviesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'moviesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$moviesViewModelHash();

  @$internal
  @override
  MoviesViewModel create() => MoviesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MoviesViewEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MoviesViewEnum>(value),
    );
  }
}

String _$moviesViewModelHash() => r'c9606a2692ecbb8fd5525779160f2ed16bf17e69';

abstract class _$MoviesViewModel extends $Notifier<MoviesViewEnum> {
  MoviesViewEnum build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MoviesViewEnum, MoviesViewEnum>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MoviesViewEnum, MoviesViewEnum>,
              MoviesViewEnum,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
