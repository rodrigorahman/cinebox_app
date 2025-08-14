import 'package:cinebox/config/result/result.dart';
import 'package:cinebox/data/repositories/tmdb/tmdb_repository.dart';
import 'package:cinebox/domain/models/movie.dart';

class GetMoviesByNameUsecase {
  final TmdbRepository _tmdbRepository;

  GetMoviesByNameUsecase({required TmdbRepository tmdbRepository})
    : _tmdbRepository = tmdbRepository;

  Future<Result<List<Movie>>> execute({required String name}) async {
    final moviesByGenreResult = await _tmdbRepository.searchMovies(
      query: name,
    );
    return moviesByGenreResult;
  }
}
