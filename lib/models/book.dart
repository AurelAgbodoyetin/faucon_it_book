class Book {
  String title;
  final String subtitle;
  final String image;
  final String authors;
  final String publisher;
  final String rating;
  final int pages;
  final String url;
  final String isbn;
  final String price;
  final String desc;

  Book({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.authors,
    required this.publisher,
    required this.rating,
    required this.pages,
    required this.url,
    required this.isbn,
    required this.price,
    required this.desc,
  });
}

Book b1 = Book(
  publisher: "O'Reilly Media",
  pages: 256,
  authors: "Christine Park, John Alderman",
  rating: "3",
  title: "The Definitive Guide to MongoDB, 3rd Edition",
  subtitle: "A complete guide to dealing with Big Data using MongoDB",
  image: "assets/images/cover_2.jpg",
  url: "https://itbook.store/books/9781484211830",
  isbn: "9781484211830",
  price: "\$49.99",
  desc:
      "oday we have the ability to connect speech, touch, haptic, and gestural interfaces into products that engage several human senses at once. This practical book explores examples from current designers and devices to describe how these products blend multiple interface modes together into a cohesive ... A complete guide to dealing with Big Data using MongoDB Today we have the ability to connect speech, touch, haptic, and gestural interfaces into products that engage several human senses at once. This practical book explores examples from current designers and devices to describe how these products blend multiple interface modes together into a cohesive ...",
);

Book b2 = Book(
  publisher: "O'Reilly Media",
  pages: 308,
  desc:
      "If programming is magic then web scraping is surely a form of wizardry. By writing a simple automated program, you can query web servers, request data, and parse it to extract the information you need. The expanded edition of this practical book not only introduces you web scraping, but also serves ...",
  authors: "Ryan Mitchell",
  rating: "4",
  title: "Practical MongoDB",
  subtitle: "Architecting, Developing, and Administering MongoDB",
  image: "assets/images/cover_4.jpg",
  url: "https://itbook.store/books/9781484206485",
  isbn: "9781484206485",
  price: "\$41.57",
);

List<Book> booksList = [b1, b2];
