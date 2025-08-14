import 'package:cinebox/ui/movies/commands/get_movies_by_category_command.dart';
import 'package:cinebox/ui/movies/commands/get_movies_by_genre_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_view_model.g.dart';

enum MoviesViewEnum { byCategory, bySearch, byGenre }

@riverpod
class MoviesViewModel extends _$MoviesViewModel {
  @override
  MoviesViewEnum build() => MoviesViewEnum.byCategory;

  Future<void> changeView(MoviesViewEnum view) async {
    state = view;
    await Future.delayed(Duration(milliseconds: 200));
  }

  Future<void> fetchMoviesByCategory() async {
    await changeView(MoviesViewEnum.byCategory);
    ref.read(getMoviesByCategoryCommandProvider.notifier).execute();
  }

  Future<void> fetchMoviesByGenre(int genreId) async {
    await changeView(MoviesViewEnum.byGenre);
    ref.read(getMoviesByGenreCommandProvider.notifier).execute(genreId);
  }
}
