import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';
import 'package:sport_in_books/widgets/custom_text.dart';
import 'package:sport_in_books/widgets/page_header_image.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const Positioned.fill(
            child: PageHeaderImage(
              imagePath: TImages.imageHeaderSportInBooks,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Center(
                  child: TText(
                    text: "SWIPE UP",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
