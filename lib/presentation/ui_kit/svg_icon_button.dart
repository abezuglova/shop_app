import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconPath;
  const SvgIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SvgPicture.asset(iconPath),
    );
  }
}
