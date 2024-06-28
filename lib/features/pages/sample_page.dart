import 'package:diorgo/core/core/controllers/loading_controller.dart';
import 'package:diorgo/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loadingProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Sample Page')),
      body: LoadingWidget(
        isLoading: isLoading,
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              ref.read(loadingProvider.notifier).startLoading();
              await Future.delayed(const Duration(seconds: 2));
              ref.read(loadingProvider.notifier).stopLoading();
            },
            child: const Text('Load Data'),
          ),
        ),
      ),
    );
  }
}
