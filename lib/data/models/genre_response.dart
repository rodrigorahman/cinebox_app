import 'package:json_annotation/json_annotation.dart';

part 'genre_response.g.dart';

@JsonSerializable()
class GenreResponse {
  final List<GenreItem> genres;

  GenreResponse({required this.genres});

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson((json));

  Map<String, dynamic> toJson() => _$GenreResponseToJson(this);
}

@JsonSerializable()
class GenreItem {
  final int id;
  final String name;

  GenreItem({required this.id, required this.name});

  factory GenreItem.fromJson(Map<String, dynamic> json) =>
      _$GenreItemFromJson(json);

  Map<String, dynamic> toJson() => _$GenreItemToJson(this);
}
