import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/repositories/movies/movies_repository.dart';
import 'package:cinebox/data/repositories/tmdb/tmdb_repository.dart';
import 'package:cinebox/domain/extensions/mark_favorite_extension.dart';
import 'package:cinebox/domain/models/favorite_movie.dart';
import 'package:cinebox/domain/models/movie.dart';

class GetMoviesByGenreUsecase {
  final TmdbRepository _tmdbRepository;
  final MoviesRepository _moviesRepository;

  GetMoviesByGenreUsecase({
    required TmdbRepository tmdbRepository,
    required MoviesRepository moviesRepository,
  }) : _tmdbRepository = tmdbRepository,
       _moviesRepository = moviesRepository;

  Future<Result<List<Movie>>> execute({required int genreId}) async {
    final results = await Future.wait([
      _moviesRepository.getMyFavoritesMovies(),
      _tmdbRepository.getMoviesByGenres(
        genreId: genreId,
      ),
    ]);

    if (results case [
      Success<List<FavoriteMovie>>(value: final favorites),
      Success<List<Movie>>(value: final movieByGenre),
    ]) {
      final favoritesIDs = favorites.map((f) => f.id).toList();
      return Success(movieByGenre.markAsFavorite(favoritesIDs));
    }

    return Failure(Exception('Erro ao buscar os filmes por generos'));
  }
}
