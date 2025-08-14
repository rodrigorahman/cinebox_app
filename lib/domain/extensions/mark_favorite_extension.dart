import 'package:cinebox/domain/models/movie.dart';

extension MarkFavoriteExtension on List<Movie> {
  List<Movie> markAsFavorite(List<int> myFavorites) {
    return map((m) {
      if (myFavorites.contains(m.id)) {
        return m.copyWith(isFavorite: true);
      }
      return m;
    }).toList();
  }
}
