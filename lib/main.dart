import 'package:faucon_it_book/app_theme.dart';
import 'package:faucon_it_book/screens/all_tabs/all_tabs.dart';
import 'package:faucon_it_book/screens/details/details_screen.dart';
import 'package:faucon_it_book/screens/login/login_screen.dart';
import 'package:faucon_it_book/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FauconITBook());
}

class FauconITBook extends StatelessWidget {
  const FauconITBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faucon Books',
      theme: themeData,
      home: const AllTabs(),
      //home: DetailsScreen(),
    );
  }
}
