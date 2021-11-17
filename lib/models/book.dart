class Book {
  String title;
  final String subtitle;
  final String image;
  final String url;
  final String isbn;
  final String price;

  Book({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.url,
    required this.isbn,
    required this.price,
  });
}

Book b1 = Book(
  title: "The Definitive Guide to MongoDB, 3rd Edition",
  subtitle: "A complete guide to dealing with Big Data using MongoDB",
  image: "assets/images/cover_2.jpg",
  url: "https://itbook.store/books/9781484211830",
  isbn: "9781484211830",
  price: "\$49.99",
);

Book b2 = Book(
  title: "Practical MongoDB",
  subtitle: "Architecting, Developing, and Administering MongoDB",
  image: "assets/images/cover_4.jpg",
  url: "https://itbook.store/books/9781484206485",
  isbn: "9781484206485",
  price: "\$41.57",
);
