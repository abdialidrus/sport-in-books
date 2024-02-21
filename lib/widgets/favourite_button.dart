import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
    required this.isFavourited,
    required this.width,
    required this.height,
    required this.onTap,
  });

  final bool isFavourited;
  final double width;
  final double height;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              isFavourited
                  ? TImages.iconHeartSelected
                  : TImages.iconHeartUnSelected,
              width: width,
              height: height,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
