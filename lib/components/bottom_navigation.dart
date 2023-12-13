import 'package:delivery_app/Screens/Account_Settings/account_settings.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/homepage.dart';
import 'package:delivery_app/Screens/Homescreen/Search%20Restaurant/search_restaurants.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Widget currentScreen = const Homepage();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Homepage();
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.food_bank_sharp,
                color: (currentIndex == 0) ? Colors.amber : Colors.grey,
              ),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const SearchRestaurantsPage();
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: (currentIndex == 1) ? Colors.amber : Colors.grey,
              ),
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.paste_rounded,
                color: (currentIndex == 2) ? Colors.amber : Colors.grey,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("");
              },
            ),
            label: "Orders"),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.person,
                color: (currentIndex == 3) ? Colors.amber : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = const AccountSettings();
                  currentIndex = 3;
                });
              },
            ),
            label: "Profile")
      ]),
    );
  }
}
