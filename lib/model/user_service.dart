import 'package:dio/dio.dart';
import 'package:test_app/model/user_model.dart';

class UserService {
  final Dio _dio = Dio();
  static const String _baseUrl = 'https://reqres.in/api';
  static const String _users = 'users';

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/$_users',
        queryParameters: {
          'page': 1, // Ubah ke integer
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'] as List<dynamic>;

        // Parsing JSON ke UserModel
        List<UserModel> users = data
            .map((json) =>
                UserModel.fromJson(json: json as Map<String, dynamic>))
            .toList();

        return users;
      } else {
        throw Exception(
            'Gagal mengambil data. Status kode: ${response.statusCode}');
      }
    } on DioException catch (dioError) {
      // Tangani error spesifik dari Dio
      throw Exception(
          'Terjadi kesalahan saat memuat data: ${dioError.message}');
    } catch (e) {
      throw Exception('Terjadi kesalahan tidak terduga: $e');
    }
  }
}
