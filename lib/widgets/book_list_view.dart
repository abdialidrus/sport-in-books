import 'package:flutter/material.dart';
import 'package:sport_in_books/models/book.dart';
import 'package:sport_in_books/utils/constants/colors.dart';
import 'package:sport_in_books/widgets/book_list_item.dart';

class BookListView extends StatefulWidget {
  const BookListView({
    super.key,
    required this.books,
    this.isTopList = false,
    this.onLikeButtonTap,
  });

  final List<BookModel> books;
  final bool isTopList;
  final Function()? onLikeButtonTap;

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: RawScrollbar(
        controller: scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        trackColor: Colors.white,
        trackBorderColor: Colors.white,
        thumbColor: TColors.primary,
        radius: const Radius.circular(16),
        trackRadius: const Radius.circular(16),
        thickness: 8,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ...widget.books
                    .map(
                      (book) => BookGalleryListItem(
                        book: book,
                        showLikeButton: widget.isTopList,
                        onLikeButtonTap: widget.onLikeButtonTap,
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
