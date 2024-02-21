import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_in_books/controller/book_controller.dart';
import 'package:sport_in_books/widgets/app_background.dart';
import 'package:sport_in_books/widgets/book_list_bottom_nav.dart';
import 'package:sport_in_books/widgets/book_list_view.dart';
import 'package:sport_in_books/widgets/page_header_image.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class TopSportBooksScreen extends StatefulWidget {
  const TopSportBooksScreen({super.key});

  static const routeName = '/top';

  @override
  State<TopSportBooksScreen> createState() => _TopSportBooksScreenState();
}

class _TopSportBooksScreenState extends State<TopSportBooksScreen> {
  final BookController bookController = Get.put(BookController());
  final _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TAppBackground(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PageHeaderImage(
                imagePath: TImages.imageHeaderTopSportBooks,
                size: HeaderSize.medium,
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: [
                    BookListView(books: bookController.getTopBooks(1)),
                    BookListView(books: bookController.getTopBooks(2)),
                  ],
                ),
              ),
              BookListBottomNavigation(controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
