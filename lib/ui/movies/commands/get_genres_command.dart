import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/repositories/repositories_providers.dart';
import 'package:cinebox/domain/models/genre.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_genres_command.g.dart';

@riverpod
class GetGenresCommand extends _$GetGenresCommand {
  @override
  Future<List<Genre>> build() async {
    final result = await ref.read(tmdbRepositoryProvider).getGenres();

    return switch (result) {
      Success(:final value) => value,
      Failure() => [],
    };
  }
}
