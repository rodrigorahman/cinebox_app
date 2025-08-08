import 'package:cinebox/config/env.dart';
import 'package:cinebox/config/result/result.dart';
import 'package:cinebox/data/services/services_providers.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'backend_rest_client_provider.g.dart';

class BackendAuthInterceptor extends Interceptor {
  final Ref ref;

  BackendAuthInterceptor({required this.ref});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final localStorage = ref.read(localStorageServiceProvider);
    final idTokenResult = await localStorage.getIdToken();

    if (idTokenResult case Success(value: final idToken)) {
      options.headers['Authorization'] = 'Bearer $idToken';
    }
    handler.next(options);
  }
}

@Riverpod(keepAlive: true)
Dio backendRestClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.backendBaseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  dio.options.headers['Content-Type'] = 'application/json';
  dio.interceptors.addAll([
    BackendAuthInterceptor(ref: ref),
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);

  return dio;
}
