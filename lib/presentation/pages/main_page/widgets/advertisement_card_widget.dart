import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdvertisementCardWidget extends StatelessWidget {
  final Advertisement advertisement;
  final Color color;
  const AdvertisementCardWidget({
    super.key,
    required this.advertisement,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SizedBox(
      width: 335.w,
      height: 208.h,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
        child: Stack(
          children: [
            Container(
              width: 335.w,
              height: 240.h,
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.advertisementShadowColor1.withOpacity(0.5),
                    offset: Offset(0, 10.h),
                    blurRadius: 20.r,
                    spreadRadius: -13.r,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 233.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          advertisement.name,
                          style: AppFonts.yesevaRegular24,
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 175.w,
                          child: Text(
                            advertisement.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.regular14_135,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 131.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        l10n.learnMore,
                        style: AppFonts.medium14_135.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -16.w,
              bottom: 0,
              child: ClipOval(
                clipper: _MyClip(),
                child: Image.network(
                  advertisement.image,
                  width: 220.w,
                  height: 190.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(56.w, 40.h, 220.w, 190.h);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}
