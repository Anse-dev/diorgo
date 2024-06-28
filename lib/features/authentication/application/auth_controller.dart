import 'package:diorgo/core/routes.dart';
import 'package:diorgo/features/authentication/data/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  bool LoggedIn = false;
  @override
  FutureOr<void> build() {
    checkIfUserIsLoggedIn();
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.watch(authRepositoryProvider).login(email, password),
    );
    if (state.asData != null) {
      goToHomePage();
    }
  }

  Future<void> register({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.watch(authRepositoryProvider).register(email, password),
    );
    if (state.asData != null) {
      goToHomePage(); // Rediriger vers la page d'accueil après inscription
    }
  }

  isLoggedIn(authToken) {
    LoggedIn = authToken != null && authToken.isNotEmpty;
  }

  void checkIfUserIsLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString('auth_token');
    if (isLoggedIn(authToken)) {
      goToHomePage(); // Rediriger directement vers la page d'accueil si l'utilisateur est déjà connecté
    }
  }

  void goToHomePage() {
    ref.read(goRouterProvider).go('/menu');
  }
}
