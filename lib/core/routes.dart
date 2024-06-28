import 'package:diorgo/core/widgets/AuthChecker.dart';
import 'package:diorgo/features/authentication/application/auth_controller.dart';
import 'package:diorgo/features/authentication/presentation/login_page.dart';
import 'package:diorgo/features/pages/another_sample_page.dart';
import 'package:diorgo/features/pages/sample_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return AuthChecker(
            loggedInBuilder: () => const LoginPage(),
            loggedOutBuilder: () => AnotherSamplePage(),
          );
        },
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: AnotherSamplePage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: '/detail',
        builder: (context, state) {
          final authController = ref.read(authControllerProvider.notifier);
          if (!authController.LoggedIn) {
            return const LoginPage();
          }
          return const SamplePage();
        },
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SamplePage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
    ],
  );
});
Widget _fadeTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(opacity: animation, child: child);
}

Widget _slideTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(1.0, 0.0);
  const end = Offset.zero;
  const curve = Curves.easeInOut;
  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);
  return SlideTransition(position: offsetAnimation, child: child);
}
