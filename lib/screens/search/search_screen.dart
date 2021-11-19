import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              //hintText:
              // "Recherchez un livre par titre, auteur, ISBN ou autres",
              //hintStyle:
              label: Text("Recherchez un livre"),
              /*suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
              ),*/
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.search_outlined),
          label: Text("Rechercher"),
        ),
      ],
    );
  }
}
