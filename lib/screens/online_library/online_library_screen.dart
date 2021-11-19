import 'package:faucon_it_book/models/book.dart';
import 'package:flutter/material.dart';

class OnlineLibraryScreen extends StatelessWidget {
  const OnlineLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: AssetImage(b1.image),
            height: 180.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          b1.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
          ),
        ),
      ],
    );
  }
}
