// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_genres_command.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(GetGenresCommand)
const getGenresCommandProvider = GetGenresCommandProvider._();

final class GetGenresCommandProvider
    extends $AsyncNotifierProvider<GetGenresCommand, List<Genre>> {
  const GetGenresCommandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getGenresCommandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getGenresCommandHash();

  @$internal
  @override
  GetGenresCommand create() => GetGenresCommand();
}

String _$getGenresCommandHash() => r'358e587cfecee17e142ce9c8e498fc11a4e0bdb9';

abstract class _$GetGenresCommand extends $AsyncNotifier<List<Genre>> {
  FutureOr<List<Genre>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Genre>>, List<Genre>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Genre>>, List<Genre>>,
              AsyncValue<List<Genre>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
