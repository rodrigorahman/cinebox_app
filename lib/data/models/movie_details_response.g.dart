// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsResponse _$MovieDetailsResponseFromJson(
  Map<String, dynamic> json,
) => MovieDetailsResponse(
  title: json['title'] as String,
  overview: json['overview'] as String,
  releaseDate: json['release_date'] as String,
  runtime: (json['runtime'] as num).toInt(),
  voteAverage: (json['vote_average'] as num).toDouble(),
  voteCount: (json['vote_count'] as num).toInt(),
  images: Images.fromJson(json['images'] as Map<String, dynamic>),
  credits: Credits.fromJson(json['credits'] as Map<String, dynamic>),
  genres: (json['genres'] as List<dynamic>)
      .map((e) => MovieDetailsGenreResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  videos: Videos.fromJson(json['videos'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MovieDetailsResponseToJson(
  MovieDetailsResponse instance,
) => <String, dynamic>{
  'title': instance.title,
  'overview': instance.overview,
  'release_date': instance.releaseDate,
  'runtime': instance.runtime,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'images': instance.images,
  'credits': instance.credits,
  'genres': instance.genres,
  'videos': instance.videos,
};

Credits _$CreditsFromJson(Map<String, dynamic> json) => Credits(
  cast: (json['cast'] as List<dynamic>)
      .map((e) => CastResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreditsToJson(Credits instance) => <String, dynamic>{
  'cast': instance.cast,
};

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
  backdrops: (json['backdrops'] as List<dynamic>)
      .map(
        (e) => MovieDetailsBackdropResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
  'backdrops': instance.backdrops,
};

CastResponse _$CastResponseFromJson(Map<String, dynamic> json) => CastResponse(
  name: json['name'] as String,
  character: json['character'] as String,
  profilePath: json['profile_path'] as String? ?? '',
);

Map<String, dynamic> _$CastResponseToJson(CastResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profilePath,
    };

MovieDetailsGenreResponse _$MovieDetailsGenreResponseFromJson(
  Map<String, dynamic> json,
) => MovieDetailsGenreResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$MovieDetailsGenreResponseToJson(
  MovieDetailsGenreResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

MovieDetailsBackdropResponse _$MovieDetailsBackdropResponseFromJson(
  Map<String, dynamic> json,
) => MovieDetailsBackdropResponse(filePath: json['file_path'] as String);

Map<String, dynamic> _$MovieDetailsBackdropResponseToJson(
  MovieDetailsBackdropResponse instance,
) => <String, dynamic>{'file_path': instance.filePath};

Videos _$VideosFromJson(Map<String, dynamic> json) => Videos(
  results: (json['results'] as List<dynamic>)
      .map((e) => VideoResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$VideosToJson(Videos instance) => <String, dynamic>{
  'results': instance.results,
};

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) =>
    VideoResponse(key: json['key'] as String);

Map<String, dynamic> _$VideoResponseToJson(VideoResponse instance) =>
    <String, dynamic>{'key': instance.key};
