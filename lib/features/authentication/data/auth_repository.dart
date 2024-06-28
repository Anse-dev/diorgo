import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  AuthRepository(this.client);
  final http.Client client;

  Future<void> login(String email, String password) async {
    final response = await client.post(
      Uri.parse('https://api.example.com/login'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to login');
    }
  }

  Future<void> register(String email, String password) async {
    final response = await client.post(
      Uri.parse('https://api.example.com/register'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to register');
    }
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository(http.Client());
}

@riverpod
Future<void> login(LoginRef ref, String email, String password) {
  return ref.watch(authRepositoryProvider).login(email, password);
}

@riverpod
Future<void> register(RegisterRef ref, String email, String password) {
  return ref.watch(authRepositoryProvider).register(email, password);
}
