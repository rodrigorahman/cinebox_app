// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movies_by_name_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SearchMoviesByNameCommand)
const searchMoviesByNameCommandProvider = SearchMoviesByNameCommandProvider._();

final class SearchMoviesByNameCommandProvider
    extends
        $NotifierProvider<SearchMoviesByNameCommand, AsyncValue<List<Movie>>> {
  const SearchMoviesByNameCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchMoviesByNameCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchMoviesByNameCommandHash();

  @$internal
  @override
  SearchMoviesByNameCommand create() => SearchMoviesByNameCommand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Movie>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Movie>>>(value),
    );
  }
}

String _$searchMoviesByNameCommandHash() =>
    r'6359fff8048d7a8837df544035b80bdeff9419e2';

abstract class _$SearchMoviesByNameCommand
    extends $Notifier<AsyncValue<List<Movie>>> {
  AsyncValue<List<Movie>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Movie>>, AsyncValue<List<Movie>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Movie>>, AsyncValue<List<Movie>>>,
              AsyncValue<List<Movie>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
