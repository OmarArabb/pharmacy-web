import 'package:dio/dio.dart';

class DioHelper {
  static Dio? _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:8000/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response<Map<String, dynamic>>> postData({
    required String url,
    required data,
  }) async {
    return await _dio!.post(
      url,
      data: data,
    );
  }

  static Future<Response<Map<String, dynamic>>> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await _dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<void> putData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    await _dio!.put(
      url,
      queryParameters: query
    );
  }
}
