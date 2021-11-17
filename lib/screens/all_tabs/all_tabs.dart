import 'package:faucon_it_book/app_color.dart';
import 'package:faucon_it_book/screens/home/home_screen.dart';
import 'package:faucon_it_book/screens/local_library/local_library_screen.dart';
import 'package:faucon_it_book/screens/online_library/online_library_screen.dart';
import 'package:faucon_it_book/screens/search/search_screen.dart';
import 'package:flutter/material.dart';

class AllTabs extends StatefulWidget {
  const AllTabs({Key? key}) : super(key: key);

  @override
  _AllTabsState createState() => _AllTabsState();
}

class _AllTabsState extends State<AllTabs> {
  List<Widget> _pages = const [
    HomeScreen(),
    SearchScreen(),
    LocalLibraryScreen(),
    OnlineLibraryScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FauconBook"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(color: AppColors.kPrimaryColor),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Accueil",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "Rechercher",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_library_outlined,
            ),
            label: "Librairie locale",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_outlined,
            ),
            label: "Librairie en ligne",
          ),
        ],
      ),
    );
  }
}
