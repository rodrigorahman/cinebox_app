// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movies_by_category_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(GetMoviesByCategoryCommand)
const getMoviesByCategoryCommandProvider =
    GetMoviesByCategoryCommandProvider._();

final class GetMoviesByCategoryCommandProvider
    extends
        $NotifierProvider<
          GetMoviesByCategoryCommand,
          AsyncValue<MoviesByCategory?>
        > {
  const GetMoviesByCategoryCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMoviesByCategoryCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMoviesByCategoryCommandHash();

  @$internal
  @override
  GetMoviesByCategoryCommand create() => GetMoviesByCategoryCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<MoviesByCategory?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<MoviesByCategory?>>(
        value,
      ),
    );
  }
}

String _$getMoviesByCategoryCommandHash() =>
    r'167e90f95df061c9c70104c0a5fcabf6f3491792';

abstract class _$GetMoviesByCategoryCommand
    extends $Notifier<AsyncValue<MoviesByCategory?>> {
  AsyncValue<MoviesByCategory?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<MoviesByCategory?>,
              AsyncValue<MoviesByCategory?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<MoviesByCategory?>,
                AsyncValue<MoviesByCategory?>
              >,
              AsyncValue<MoviesByCategory?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
