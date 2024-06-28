import 'package:http/http.dart' as http;

class AuthApi {
  Future<void> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://api.example.com/login'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to login');
    }
  }

  Future<void> register(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://api.example.com/register'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to register');
    }
  }
}
