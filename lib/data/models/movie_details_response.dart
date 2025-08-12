import 'package:json_annotation/json_annotation.dart';

part 'movie_details_response.g.dart';

@JsonSerializable()
class MovieDetailsResponse {
  final String title;
  final String overview;
  final String releaseDate;
  final int runtime;
  final double voteAverage;
  final int voteCount;
  final Images images;
  final Credits credits;
  final List<MovieDetailsGenreResponse> genres;
  final Videos videos;

  MovieDetailsResponse({
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.voteAverage,
    required this.voteCount,
    required this.images,
    required this.credits,
    required this.genres,
    required this.videos,
  });

  factory MovieDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsResponseToJson(this);
}

@JsonSerializable()
class Credits {
  final List<CastResponse> cast;

  Credits({
    required this.cast,
  });

  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);

  Map<String, dynamic> toJson() => _$CreditsToJson(this);
}

@JsonSerializable()
class Images {
  final List<MovieDetailsBackdropResponse> backdrops;

  Images({
    required this.backdrops,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class CastResponse {
  final String name;
  final String character;
  @JsonKey(defaultValue: '')
  final String profilePath;

  CastResponse({
    required this.name,
    required this.character,
    required this.profilePath,
  });

  factory CastResponse.fromJson(Map<String, dynamic> json) =>
      _$CastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CastResponseToJson(this);
}

@JsonSerializable()
class MovieDetailsGenreResponse {
  final int id;
  final String name;

  MovieDetailsGenreResponse({
    required this.id,
    required this.name,
  });

  factory MovieDetailsGenreResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsGenreResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsGenreResponseToJson(this);
}

@JsonSerializable()
class MovieDetailsBackdropResponse {
  final String filePath;

  MovieDetailsBackdropResponse({
    required this.filePath,
  });

  factory MovieDetailsBackdropResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsBackdropResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsBackdropResponseToJson(this);
}

@JsonSerializable()
class Videos {
  final List<VideoResponse> results;

  Videos({
    required this.results,
  });

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}

@JsonSerializable()
class VideoResponse {
  final String key;

  VideoResponse({
    required this.key,
  });

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VideoResponseToJson(this);
}
