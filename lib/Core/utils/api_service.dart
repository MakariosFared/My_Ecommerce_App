import 'package:dio/dio.dart';

class ApiService {
  // final _baseUrl = 'https://api.escuelajs.co/api/v1/';
  final _baseUrl = 'https://dummyjson.com/';

  final Dio _dio;

  ApiService(this._dio);

  Future<dynamic> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');

    if (response.data is List) {
      return response.data as List<dynamic>;
    } else if (response.data is Map) {
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Unexpected response type');
    }
  }
}
