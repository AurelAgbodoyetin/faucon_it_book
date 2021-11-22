import 'package:faucon_it_book/screens/home/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:faucon_it_book/models/book.dart';
import 'package:faucon_it_book/screens/details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: ListView.separated(
        itemCount: booksList.length,
        itemBuilder: (context, index) {
          return BookCard(book: booksList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 30.0);
        },
      ),
    );
  }
}
