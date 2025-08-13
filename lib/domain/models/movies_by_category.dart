import 'package:cinebox/domain/models/movie.dart';

class MoviesByCategory {
  final List<Movie> popular;
  final List<Movie> topRated;
  final List<Movie> nowPlaying;
  final List<Movie> upcoming;

  MoviesByCategory({
    required this.popular,
    required this.topRated,
    required this.nowPlaying,
    required this.upcoming,
  });
}
