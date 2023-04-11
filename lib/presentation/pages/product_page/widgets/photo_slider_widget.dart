import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PhotoSliderWidget extends StatefulWidget {
  final List<String> images;
  const PhotoSliderWidget({super.key, required this.images});

  @override
  State<PhotoSliderWidget> createState() => _PhotoSliderWidgetState();
}

class _PhotoSliderWidgetState extends State<PhotoSliderWidget> {
  final controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemBuilder: ((BuildContext context, int index) => SizedBox(
                  child: Image.network(
                    widget.images[index],
                  ),
                )),
            itemCount: widget.images.length,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: SmoothPageIndicator(
                controller: controller,
                count: widget.images.length,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.white,
                  activeDotColor: Colors.white,
                  dotHeight: 5,
                  dotWidth: 5,
                  expansionFactor: 6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
