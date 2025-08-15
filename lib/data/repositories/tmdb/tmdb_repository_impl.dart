import 'dart:developer';

import 'package:cinebox/core/result/result.dart';
import 'package:cinebox/data/exceptions/data_exception.dart';
import 'package:cinebox/data/mappers/movie_mappers.dart';
import 'package:cinebox/data/services/tmdb/tmdb_service.dart';
import 'package:cinebox/domain/models/cast.dart';
import 'package:cinebox/domain/models/genre.dart';
import 'package:cinebox/domain/models/movie.dart';
import 'package:cinebox/domain/models/movie_detail.dart';
import 'package:dio/dio.dart';

import './tmdb_repository.dart';

class TmdbRepositoryImpl implements TmdbRepository {
  final TmdbService _tmdbService;

  TmdbRepositoryImpl({required TmdbService tmdbService})
    : _tmdbService = tmdbService;

  @override
  Future<Result<List<Movie>>> getPopularMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    try {
      final moviesData = await _tmdbService.getPopularMovies(
        language: language,
        page: page,
      );
      return Success(MovieMappers.mapToMovies(moviesData));
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getNowPlayingMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    try {
      final moviesData = await _tmdbService.getNowPlaingMovies(
        language: language,
        page: page,
      );
      return Success(MovieMappers.mapToMovies(moviesData));
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getTopRatedMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    try {
      final moviesData = await _tmdbService.getTopRatedMovies(
        language: language,
        page: page,
      );
      return Success(MovieMappers.mapToMovies(moviesData));
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> getUpComingMovies({
    String language = 'pt-BR',
    int page = 1,
  }) async {
    try {
      final moviesData = await _tmdbService.getUpComingMovies(
        language: language,
        page: page,
      );
      return Success(MovieMappers.mapToMovies(moviesData));
    } on DioException catch (e, s) {
      log('Erro ao buscar getPopularMovies', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar os filmes populares'),
      );
    }
  }

  @override
  Future<Result<List<Genre>>> getGenres() async {
    try {
      final data = await _tmdbService.getMoviesGenres();
      final genres = data.genres
          .map((g) => Genre(id: g.id, name: g.name))
          .toList();
      return Success(genres);
    } on DioException catch (e, s) {
      log('Erro ao buscar generos', error: e, stackTrace: s);
      return Failure(DataException(message: 'Erro ao buscar generos'));
    }
  }

  @override
  Future<Result<List<Movie>>> getMoviesByGenres({required int genreId}) async {
    try {
      final data = await _tmdbService.discoverMovies(
        withGenres: genreId.toString(),
      );
      return Success(MovieMappers.mapToMovies(data));
    } on DioException catch (e, s) {
      log('Erro ao buscar filmes por genero', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar filmes por genero'),
      );
    }
  }

  @override
  Future<Result<List<Movie>>> searchMovies({required String query}) async {
    try {
      final data = await _tmdbService.searchMovies(query: query);
      return Success(MovieMappers.mapToMovies(data));
    } on DioException catch (e, s) {
      log('Erro ao buscar filmes por nome', error: e, stackTrace: s);
      return Failure(
        DataException(message: 'Erro ao buscar filmes por nome'),
      );
    }
  }

  @override
  Future<Result<MovieDetail>> getMovieDetail(int movieId) async {
    final response = await _tmdbService.getMovieDetails(
      movieId,
      appendToResponse: 'credits,videos,recommendations,release_dates,images',
    );

    final movieDetail = MovieDetail(
      title: response.title,
      overview: response.overview,
      releaseDate: response.releaseDate,
      runtime: response.runtime,
      voteAverage: response.voteAverage,
      voteCount: response.voteCount,
      images: response.images.backdrops
          .map(
            (i) => 'https://image.tmdb.org/t/p/w342/${i.filePath}',
          )
          .toList(),
      cast: response.credits.cast
          .map(
            (c) => Cast(
              name: c.name,
              character: c.character,
              profilePath: c.profilePath,
            ),
          )
          .toList(),
      genres: response.genres
          .map((g) => Genre(id: g.id, name: g.name))
          .toList(),
      videos: response.videos.results.map((v) => v.key).toList(),
    );
    return Success(movieDetail);
  }
}
