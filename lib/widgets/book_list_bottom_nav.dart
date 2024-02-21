import 'package:flutter/material.dart';
import 'package:sport_in_books/screens/loading_screen.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';
import 'package:sport_in_books/widgets/circle_icon_container.dart';

class BookListBottomNavigation extends StatelessWidget {
  const BookListBottomNavigation({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleIconContainer(
            iconPath: TImages.iconArrowLeft,
            width: 20,
            height: 20,
            onTap: () {
              if (_controller.page! > 0) {
                _controller.previousPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear);
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
          CircleIconContainer(
            iconPath: TImages.iconHome,
            width: 20,
            height: 20,
            onTap: () => Navigator.of(context).popUntil((route) {
              return route.settings.name == LoadingScreen.routeName;
            }),
          ),
          CircleIconContainer(
            iconPath: TImages.iconArrowRight,
            width: 20,
            height: 20,
            onTap: () {
              _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear);
            },
          ),
        ],
      ),
    );
  }
}
