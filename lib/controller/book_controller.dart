import 'package:get/get.dart';
import 'package:sport_in_books/models/book.dart';
import 'package:sport_in_books/models/book_repository.dart';

class BookController extends GetxController {
  static BookController get instance => Get.find();

  final allBooks = BookRepository.books;

  List<BookModel> getTopBooks(int page) {
    if (page == 1) {
      return allBooks.take(5).toList();
    } else {
      return allBooks.getRange(5, 10).toList();
    }
  }

  List<BookModel> getLikedBooks() {
    return allBooks.where((book) => book.isFavorite).toList();
  }

  void likeOrDislikeBook(BookModel book) {
    book.isFavorite = !book.isFavorite;
  }
}
