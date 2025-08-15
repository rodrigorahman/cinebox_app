// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoritesViewModel)
const favoritesViewModelProvider = FavoritesViewModelProvider._();

final class FavoritesViewModelProvider
    extends
        $FunctionalProvider<
          FavoritesViewModel,
          FavoritesViewModel,
          FavoritesViewModel
        >
    with $Provider<FavoritesViewModel> {
  const FavoritesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesViewModelHash();

  @$internal
  @override
  $ProviderElement<FavoritesViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FavoritesViewModel create(Ref ref) {
    return favoritesViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoritesViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoritesViewModel>(value),
    );
  }
}

String _$favoritesViewModelHash() =>
    r'0eb9413920a040d27aa87e33b95d764b4b471d5c';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
