import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class ErrorScreen extends StatelessWidget {
  final Future<void> Function() onRefresh;
  const ErrorScreen({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ColoredBox(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.wifi_off),
              SizedBox(height: 20.h),
              Text(
                l10n.loadingFailure,
                style: AppFonts.regular16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
