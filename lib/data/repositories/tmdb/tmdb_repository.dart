import 'package:cinebox/config/result/result.dart';
import 'package:cinebox/domain/models/genre.dart';
import 'package:cinebox/domain/models/movie.dart';

abstract interface class TmdbRepository {
  Future<Result<List<Movie>>> getPopularMovies({
    String language,
    int page,
  });

  Future<Result<List<Movie>>> getTopRatedMovies({
    String language,
    int page,
  });

  Future<Result<List<Movie>>> getNowPlayingMovies({
    String language,
    int page,
  });

  Future<Result<List<Movie>>> getUpComingMovies({
    String language,
    int page,
  });

  Future<Result<List<Genre>>> getGenres();

  Future<Result<List<Movie>>> getMoviesByGenres({required int genreId});

  Future<Result<List<Movie>>> searchMovies({required String query});
}
