import 'package:cinebox/data/models/genre_response.dart';
import 'package:cinebox/data/models/movie_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'tmdb_service.g.dart';

@RestApi()
abstract class TmdbService {
  factory TmdbService(Dio dio, {String? baseUrl}) = _TmdbService;

  @GET('/genre/movie/list')
  Future<GenreResponse> getMoviesGenres({
    @Query('language') String language = 'pt-BR',
  });

  @GET('/movie/popular')
  Future<MovieResponse> getPopularMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('/movie/top_rated')
  Future<MovieResponse> getTopRagedMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('/movie/now_playing')
  Future<MovieResponse> getNowPlaingMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });

  @GET('/movie/upcoming')
  Future<MovieResponse> getUpComingMovies({
    @Query('language') String language = 'pt-BR',
    @Query('page') int page = 1,
  });
}
