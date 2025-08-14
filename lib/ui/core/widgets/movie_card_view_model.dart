import 'package:cinebox/ui/core/commands/remove_favorite_movie_command.dart';
import 'package:cinebox/ui/core/commands/save_favorite_movie_command.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_card_view_model.g.dart';

@riverpod
class MovieCardViewModel extends _$MovieCardViewModel {
  @override
  void build(Key key, int movieId) {}

  void addOrRemoveFavorite({
    required int id,
    required String title,
    required String posterPath,
    required int year,
    required bool favorite,
  }) {
    if (favorite) {
      ref
          .read(saveFavoriteMovieCommandProvider(key, movieId).notifier)
          .execute(id: id, title: title, posterPath: posterPath, year: year);
    } else {
      ref
          .read(removeFavoriteMovieCommandProvider(key, movieId).notifier)
          .execute();
    }
  }
}
