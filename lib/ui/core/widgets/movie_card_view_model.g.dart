// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_card_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MovieCardViewModel)
const movieCardViewModelProvider = MovieCardViewModelFamily._();

final class MovieCardViewModelProvider
    extends $NotifierProvider<MovieCardViewModel, void> {
  const MovieCardViewModelProvider._({
    required MovieCardViewModelFamily super.from,
    required (Key, int) super.argument,
  }) : super(
         retry: null,
         name: r'movieCardViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$movieCardViewModelHash();

  @override
  String toString() {
    return r'movieCardViewModelProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  MovieCardViewModel create() => MovieCardViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MovieCardViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$movieCardViewModelHash() =>
    r'1c79ec229f56c3948baff09c406af9b56f127dde';

final class MovieCardViewModelFamily extends $Family
    with
        $ClassFamilyOverride<MovieCardViewModel, void, void, void, (Key, int)> {
  const MovieCardViewModelFamily._()
    : super(
        retry: null,
        name: r'movieCardViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MovieCardViewModelProvider call(Key key, int movieId) =>
      MovieCardViewModelProvider._(argument: (key, movieId), from: this);

  @override
  String toString() => r'movieCardViewModelProvider';
}

abstract class _$MovieCardViewModel extends $Notifier<void> {
  late final _$args = ref.$arg as (Key, int);
  Key get key => _$args.$1;
  int get movieId => _$args.$2;

  void build(Key key, int movieId);
  @$mustCallSuper
  @override
  void runBuild() {
    build(_$args.$1, _$args.$2);
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
