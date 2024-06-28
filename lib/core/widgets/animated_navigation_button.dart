import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatedNavigationButton extends StatelessWidget {
  final String label;
  final String route;

  const AnimatedNavigationButton({
    super.key,
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.go(route),
      child: Text(label),
    );
  }
}
