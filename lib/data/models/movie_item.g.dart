// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieItem _$MovieItemFromJson(Map<String, dynamic> json) => MovieItem(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  overview: json['overview'] as String,
  genreIds: (json['genre_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  voteAverage: (json['vote_average'] as num).toDouble(),
  releaseDate: json['release_date'] as String?,
);

Map<String, dynamic> _$MovieItemToJson(MovieItem instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'overview': instance.overview,
  'genre_ids': instance.genreIds,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
  'vote_average': instance.voteAverage,
  'release_date': instance.releaseDate,
};
