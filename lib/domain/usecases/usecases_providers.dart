import 'package:cinebox/data/repositories/repositories_providers.dart';
import 'package:cinebox/domain/usecases/get_movies_by_category_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases_providers.g.dart';

@riverpod
GetMoviesByCategoryUsecase getMoviesByCategoryUsecase(Ref ref) {
  return GetMoviesByCategoryUsecase(
    tmdbRepository: ref.read(tmdbRepositoryProvider),
  );
}
