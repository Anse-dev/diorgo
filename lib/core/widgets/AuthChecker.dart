import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:diorgo/features/authentication/application/auth_controller.dart';

class AuthChecker extends ConsumerWidget {
  final Widget Function() loggedInBuilder;
  final Widget Function() loggedOutBuilder;

  const AuthChecker({
    super.key,
    required this.loggedInBuilder,
    required this.loggedOutBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.read(authControllerProvider.notifier);
    authController.checkIfUserIsLoggedIn();

    return Consumer(
      builder: (context, watch, child) {
        const isLoggedIn = false;

        return isLoggedIn ? loggedInBuilder() : loggedOutBuilder();
      },
    );
  }
}
