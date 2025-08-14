import 'package:cinebox/config/result/result.dart';
import 'package:cinebox/domain/models/movie.dart';
import 'package:cinebox/domain/usecases/usecases_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_movies_by_name_command.g.dart';

@riverpod
class SearchMoviesByNameCommand extends _$SearchMoviesByNameCommand {
  @override
  AsyncValue<List<Movie>> build() => AsyncLoading();

  Future<void> execute(String name) async {
    state = AsyncLoading();
    final searchMovieUC = ref.read(getMoviesByNameUsecaseProvider);
    final result = await searchMovieUC.execute(name: name);

    state = switch (result) {
      Success(:final value) => AsyncData(value),
      Failure() => AsyncError(
        Exception('Erro ao buscar filmes'),
        StackTrace.current,
      ),
    };
  }
}
