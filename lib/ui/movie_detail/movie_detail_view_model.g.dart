// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(movieDetailViewModel)
const movieDetailViewModelProvider = MovieDetailViewModelProvider._();

final class MovieDetailViewModelProvider
    extends
        $FunctionalProvider<
          MovieDetailViewModel,
          MovieDetailViewModel,
          MovieDetailViewModel
        >
    with $Provider<MovieDetailViewModel> {
  const MovieDetailViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieDetailViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieDetailViewModelHash();

  @$internal
  @override
  $ProviderElement<MovieDetailViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MovieDetailViewModel create(Ref ref) {
    return movieDetailViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieDetailViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieDetailViewModel>(value),
    );
  }
}

String _$movieDetailViewModelHash() =>
    r'0c17742f448168331f41333143606f3a9bdb55fa';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
