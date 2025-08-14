// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(GetFavoritesCommand)
const getFavoritesCommandProvider = GetFavoritesCommandProvider._();

final class GetFavoritesCommandProvider
    extends
        $NotifierProvider<
          GetFavoritesCommand,
          AsyncValue<List<FavoriteMovie>>
        > {
  const GetFavoritesCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesCommandHash();

  @$internal
  @override
  GetFavoritesCommand create() => GetFavoritesCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<FavoriteMovie>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<FavoriteMovie>>>(
        value,
      ),
    );
  }
}

String _$getFavoritesCommandHash() =>
    r'1bbade9dd4d02724d376a3777c55966ffa335d77';

abstract class _$GetFavoritesCommand
    extends $Notifier<AsyncValue<List<FavoriteMovie>>> {
  AsyncValue<List<FavoriteMovie>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<FavoriteMovie>>,
              AsyncValue<List<FavoriteMovie>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<FavoriteMovie>>,
                AsyncValue<List<FavoriteMovie>>
              >,
              AsyncValue<List<FavoriteMovie>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
