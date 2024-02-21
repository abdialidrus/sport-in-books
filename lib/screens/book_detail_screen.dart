import 'package:flutter/material.dart';
import 'package:sport_in_books/controller/book_controller.dart';
import 'package:sport_in_books/widgets/app_background.dart';
import 'package:sport_in_books/widgets/book_cover_image.dart';
import 'package:sport_in_books/widgets/circle_icon_container.dart';
import 'package:sport_in_books/widgets/custom_text.dart';
import 'package:sport_in_books/widgets/favourite_button.dart';
import 'package:sport_in_books/models/book.dart';
import 'package:sport_in_books/screens/loading_screen.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({super.key});

  static const routeName = '/detail';

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  final BookController bookController = BookController.instance;

  @override
  Widget build(BuildContext context) {
    final bookArg = ModalRoute.of(context)!.settings.arguments as BookModel;

    return Scaffold(
      body: TAppBackground(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FavouriteButton(
                isFavourited: bookArg.isFavorite,
                width: 20,
                height: 20,
                onTap: () {
                  bookController.likeOrDislikeBook(bookArg);
                  setState(() {});
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TText(
                      text: bookArg.title,
                      style: Theme.of(context).textTheme.titleLarge!,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    BookCoverImage(coverPath: bookArg.coverUrl),
                    const SizedBox(height: 15),
                    TText(
                      text: '${bookArg.author} (${bookArg.year})',
                      style: Theme.of(context).textTheme.titleLarge!,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    TText(
                      text: bookArg.longDesc,
                      style: Theme.of(context).textTheme.bodyMedium!,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CircleIconContainer(
                iconPath: TImages.iconHome,
                width: 20,
                height: 20,
                onTap: () => Navigator.of(context).popUntil(
                  (route) {
                    return route.settings.name == LoadingScreen.routeName;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
