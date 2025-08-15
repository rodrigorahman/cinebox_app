import 'package:cinebox/domain/models/cast.dart';
import 'package:cinebox/domain/models/genre.dart';

class MovieDetail {
  final String title;
  final String overview;
  final String releaseDate;
  final int runtime;
  final double voteAverage;
  final int voteCount;
  final List<String> images;
  final List<Cast> cast;
  final List<Genre> genres;
  final List<String> videos;

  MovieDetail({
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.voteAverage,
    required this.voteCount,
    required this.images,
    required this.cast,
    required this.genres,
    required this.videos,
  });
}
