import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_in_books/controller/book_controller.dart';
import 'package:sport_in_books/widgets/app_background.dart';
import 'package:sport_in_books/widgets/book_list_view.dart';
import 'package:sport_in_books/widgets/circle_icon_container.dart';
import 'package:sport_in_books/widgets/page_header_image.dart';
import 'package:sport_in_books/screens/loading_screen.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class MyTopListScreen extends StatefulWidget {
  const MyTopListScreen({super.key});

  static const routeName = '/liked';

  @override
  State<MyTopListScreen> createState() => _MyTopListScreenState();
}

class _MyTopListScreenState extends State<MyTopListScreen> {
  final BookController bookController = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TAppBackground(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PageHeaderImage(
                imagePath: TImages.imageHeaderMyTopList,
                size: HeaderSize.medium,
              ),
              Expanded(
                child: BookListView(
                  books: bookController.getLikedBooks(),
                  isTopList: true,
                  onLikeButtonTap: () {
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleIconContainer(
                  iconPath: TImages.iconHome,
                  width: 20,
                  height: 20,
                  onTap: () => Navigator.of(context).popUntil(
                    (route) {
                      return route.settings.name == LoadingScreen.routeName;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
