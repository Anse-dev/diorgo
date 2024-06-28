import 'package:diorgo/core/core/controllers/loading_controller.dart';
import 'package:diorgo/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AnotherSamplePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loadingProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Another Sample Page')),
      body: LoadingWidget(
        isLoading: isLoading,
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              ref.read(loadingProvider.notifier).startLoading();
              await Future.delayed(Duration(seconds: 3));
              ref.read(loadingProvider.notifier).stopLoading();
            },
            child: Text('Fetch Data'),
          ),
        ),
      ),
    );
  }
}
