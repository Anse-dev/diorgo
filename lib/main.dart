import 'package:diorgo/core/routes.dart';
import 'package:diorgo/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return ProviderScope(
      child: MaterialApp.router(
        title: 'Diorgo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: goRouter,
      ),
    );
  }
}
