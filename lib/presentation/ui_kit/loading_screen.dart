import 'package:flutter/material.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShadowWrapper(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
