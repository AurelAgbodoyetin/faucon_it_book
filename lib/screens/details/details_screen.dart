import 'package:flutter/material.dart';

import 'package:faucon_it_book/app_color.dart';
import 'package:faucon_it_book/models/book.dart';
import 'package:faucon_it_book/screens/details/widgets/book_info.dart';

class DetailsScreen extends StatelessWidget {
  final Book book;
  const DetailsScreen({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.save_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.push_pin_outlined,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          //fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /* Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          b1.image,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.8),
                          offset: Offset(5, 0),
                        ),
                      ],
                    ),
                  ), */
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(book.image),
                            height: 180.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    book.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "par " + book.authors,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      color: AppColors.kTextColor.withOpacity(.6),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BookInfo(
                        tag: "Publié par",
                        value: book.publisher,
                      ),
                      BookInfo(
                        tag: "Note sur 5",
                        value: "⭐ " + book.rating,
                      ),
                      BookInfo(
                        tag: "Pages",
                        value: book.pages.toString(),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Divider(thickness: 1.5),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 29.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    book.desc,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17.0,
                    ),
                  ),
                  SizedBox(height: 70.0),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                //width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  "Voir plus".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    color: AppColors.kTextColor,
                    //letterSpacing: 3.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
