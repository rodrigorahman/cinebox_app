import 'package:json_annotation/json_annotation.dart';

part 'movie_item.g.dart';

@JsonSerializable()
class MovieItem {
  final int id;
  final String title;
  final String overview;
  final List<int>? genreIds;
  final String? posterPath;
  final String? backdropPath;
  final double voteAverage;
  final String? releaseDate;
  MovieItem({
    required this.id,
    required this.title,
    required this.overview,
    this.genreIds,
    this.posterPath,
    this.backdropPath,
    required this.voteAverage,
    this.releaseDate,
  });

  factory MovieItem.fromJson(Map<String, dynamic> json) =>
      _$MovieItemFromJson(json);

  Map<String, dynamic> toJson() => _$MovieItemToJson(this);
}
