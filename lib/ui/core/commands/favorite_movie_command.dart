import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_movie_command.g.dart';

@riverpod
class FavoriteMovieCommand extends _$FavoriteMovieCommand {
  @override
  bool build(int movieId) => false;

  void toogleFavorite() {
    state = !state;
  }

  void setFavorite(bool isFavorite) {
    state = isFavorite;
  }
}
