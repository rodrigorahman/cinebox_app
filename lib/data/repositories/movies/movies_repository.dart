import 'package:cinebox/config/result/result.dart';
import 'package:cinebox/domain/models/favorite_movie.dart';

abstract interface class MoviesRepository {
  Future<Result<List<FavoriteMovie>>> getMyFavoritesMovies();
}
