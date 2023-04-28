import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SortingWidget extends StatefulWidget {
  final List<Product> productList;
  const SortingWidget({super.key, required this.productList});

  @override
  State<SortingWidget> createState() => _SortingWidgetState();
}

class _SortingWidgetState extends State<SortingWidget> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            l10n.nProducts(widget.productList.length),
            style: AppFonts.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.byAddingTime,
                style: AppFonts.regular14,
              ),
              const SizedBox(width: 8),
              SvgPicture.asset(AppIcons.arrowDownIcon),
            ],
          ),
        ],
      ),
    );
  }
}
