import 'package:flutter/material.dart';
import 'package:sport_in_books/widgets/book_cover_image.dart';
import 'package:sport_in_books/widgets/custom_text.dart';
import 'package:sport_in_books/widgets/favourite_button.dart';
import 'package:sport_in_books/models/book.dart';
import 'package:sport_in_books/screens/book_detail_screen.dart';

class BookGalleryListItem extends StatelessWidget {
  const BookGalleryListItem({
    super.key,
    required this.book,
    this.showLikeButton = false,
    this.onLikeButtonTap,
  });

  final BookModel book;
  final bool showLikeButton;
  final Function()? onLikeButtonTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(BookDetailScreen.routeName, arguments: book),
      child: SizedBox(
        width: 142,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 5.0,
                  ),
                  child: BookCoverImage(coverPath: book.coverUrl),
                ),
                showLikeButton
                    ? Positioned(
                        top: 0,
                        left: 0,
                        child: FavouriteButton(
                          isFavourited: book.isFavorite,
                          width: 15,
                          height: 15,
                          onTap: () {
                            book.isFavorite = !book.isFavorite;
                            onLikeButtonTap!();
                          },
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TText(
                text: book.shortDesc,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
