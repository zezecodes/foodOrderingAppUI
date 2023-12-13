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
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            setState(() {});
          }),
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.food_bank_sharp),
                  onPressed: () {
                    // setState(() {
                    //   currentScreen = const Homepage();
                    //   currentIndex = 0;
                    // });
                    currentScreen = Homepage();
                  },
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
                  icon: const Icon(
                    Icons.paste_rounded,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("");
                  },
                ),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.person),
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
