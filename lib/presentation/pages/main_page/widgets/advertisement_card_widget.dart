import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';

class AdvertisementCardWidget extends StatelessWidget {
  final Advertisement advertisement;
  const AdvertisementCardWidget({super.key, required this.advertisement});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 208,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: Stack(
          children: [
            Container(
              width: 335,
              height: 208,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.promoColor1,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.advertisementShadowColor1.withOpacity(0.5),
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                    spreadRadius: -13,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 233,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          advertisement.name,
                          style: AppFonts.yesevaRegular24,
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 175,
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
                    width: 131,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Узнать больше',
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
              left: 150,
              top: 30,
              child: ClipOval(
                clipper: _MyClip(),
                child: Image.network(
                  advertisement.image,
                  width: 200,
                  height: 200,
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
    return const Rect.fromLTWH(52, 40, 200, 200);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}