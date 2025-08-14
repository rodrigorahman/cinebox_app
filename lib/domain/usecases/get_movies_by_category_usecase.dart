import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/repositories/movies/movies_repository.dart';
import 'package:cinebox/data/repositories/tmdb/tmdb_repository.dart';
import 'package:cinebox/domain/extensions/mark_favorite_extension.dart';
import 'package:cinebox/domain/models/favorite_movie.dart';
import 'package:cinebox/domain/models/movie.dart';
import 'package:cinebox/domain/models/movies_by_category.dart';

class GetMoviesByCategoryUsecase {
  final TmdbRepository _tmdbRepository;
  final MoviesRepository _moviesRepository;

  GetMoviesByCategoryUsecase({
    required TmdbRepository tmdbRepository,
    required MoviesRepository moviesRepository,
  }) : _tmdbRepository = tmdbRepository,
       _moviesRepository = moviesRepository;

  Future<Result<MoviesByCategory>> execute() async {
    final results = await Future.wait([
      _moviesRepository.getMyFavoritesMovies(),
      _tmdbRepository.getPopularMovies(),
      _tmdbRepository.getTopRatedMovies(),
      _tmdbRepository.getNowPlayingMovies(),
      _tmdbRepository.getUpComingMovies(),
    ]);

    if (results case [
      Success<List<FavoriteMovie>>(value: final favorites),
      Success<List<Movie>>(value: final popular),
      Success<List<Movie>>(value: final topRated),
      Success<List<Movie>>(value: final nowPlaying),
      Success<List<Movie>>(value: final upcoming),
    ]) {
      final favoritesIDs = favorites.map((f) => f.id).toList();

      return Success(
        MoviesByCategory(
          popular: popular.markAsFavorite(favoritesIDs),
          topRated: topRated.markAsFavorite(favoritesIDs),
          nowPlaying: nowPlaying.markAsFavorite(favoritesIDs),
          upcoming: upcoming.markAsFavorite(favoritesIDs),
        ),
      );
    }

    return Failure(Exception('Erro ao buscar categrias de filmes'));
  }
}
