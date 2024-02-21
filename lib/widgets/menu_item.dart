import 'package:flutter/material.dart';
import 'package:sport_in_books/widgets/circle_icon_container.dart';
import 'package:sport_in_books/widgets/custom_text.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key,
    required this.menuTitle,
    required this.menuIconPath,
    required this.onTap,
  });

  final String menuTitle;
  final String menuIconPath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleIconContainer(
          iconPath: menuIconPath,
          width: 100,
          height: 100,
          onTap: onTap,
        ),
        const SizedBox(height: 10),
        TText(
          text: menuTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
