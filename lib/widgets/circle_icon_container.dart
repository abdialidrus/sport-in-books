import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants/colors.dart';

class CircleIconContainer extends StatelessWidget {
  const CircleIconContainer({
    super.key,
    required this.iconPath,
    required this.width,
    required this.height,
    required this.onTap,
  });

  final String iconPath;
  final double width;
  final double height;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFF7A7A7A),
            width: 1.2,
          ),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1.5),
              color: TColors.textSecondary,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SvgPicture.asset(
            iconPath,
            width: width,
            height: height,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
