import 'package:json_annotation/json_annotation.dart';

part 'save_favorite_movie.g.dart';

@JsonSerializable()
class SaveFavoriteMovie {
  final int movieId;
  final String posterUrl;
  final String title;
  final int year;

  SaveFavoriteMovie({
    required this.movieId,
    required this.posterUrl,
    required this.title,
    required this.year,
  });

  factory SaveFavoriteMovie.fromJson(Map<String, dynamic> json) =>
      _$SaveFavoriteMovieFromJson(json);

  Map<String, dynamic> toJson() => _$SaveFavoriteMovieToJson(this);
}
