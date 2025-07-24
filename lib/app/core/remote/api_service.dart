import 'package:dio/dio.dart';

class ApiService {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://reqres.in/api/', // Ganti sesuai API kamu
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 15),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  // OPTIONAL: tambahkan token jika ada
  static void setToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  static Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  static Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await _dio.post(endpoint, data: body);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  static Future<dynamic> put(String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await _dio.put(endpoint, data: body);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  static Future<dynamic> delete(String endpoint) async {
    try {
      final response = await _dio.delete(endpoint);
      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  static void _handleError(DioException e) {
    final message = e.response?.data ?? e.message;
    throw Exception('API Error: $message');
  }
}
