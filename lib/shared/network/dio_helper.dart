import 'package:dio/dio.dart';

class DioHelper {
  static Dio? _dio;

  DioHelper() {
    _dio = Dio(BaseOptions(
      baseUrl: '',
    ));
  }

  static Future<void> saveData({
    required String endPoint,
    required List<Map<String, dynamic>> data,
  }) async {
    await _dio!.post(endPoint, data: data);
  }
}
