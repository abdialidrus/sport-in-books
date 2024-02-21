class BookModel {
  final int id;
  final String title;
  final String author;
  final String year;
  final String coverUrl;
  final String shortDesc;
  final String longDesc;
  bool isFavorite;

  BookModel({
    required this.title,
    required this.author,
    required this.year,
    required this.id,
    required this.coverUrl,
    required this.shortDesc,
    required this.longDesc,
    this.isFavorite = false,
  });
}
