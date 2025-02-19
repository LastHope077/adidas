import 'package:adidas/adiclub_screen.dart';
import 'package:adidas/favorites_screen.dart';
import 'package:adidas/home_screen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:flutter/material.dart';

class HomescreenNavi extends StatefulWidget {
  const HomescreenNavi({super.key});

  @override
  State<HomescreenNavi> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomescreenNavi> {
  int _selectedIndex = 0;
  final Map<int, Map<String, Widget>> _navigationMap = {
    0: {"title": const Text("Home"), "screen": HomeScreen()},
    1: {"title": const Text("Search"), "screen": SearchScreen()},
    2: {"title": const Text("Favorites"), "screen": FavoritesScreen()},
    3: {"title": const Text("Cart"), "screen": ShoppingScreen()},
    4: {"title": const Text("AdiClub"), "screen": AdiclubScreen()},
  };
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "SHOP",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children:
              _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/promotions.png',
                  width: 30,
                  height: 30,
                ),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/promotions.png',
                  width: 30,
                  height: 30,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}