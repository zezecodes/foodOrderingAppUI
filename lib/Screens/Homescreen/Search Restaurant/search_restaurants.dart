import 'package:delivery_app/components/restaurant_box.dart';
import 'package:delivery_app/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchRestaurantsPage extends StatefulWidget {
  const SearchRestaurantsPage({super.key});

  @override
  State<SearchRestaurantsPage> createState() => _SearchRestaurantsPageState();
}

class _SearchRestaurantsPageState extends State<SearchRestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Search",
          style:
              GoogleFonts.openSans(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01,
            // vertical: MediaQuery.of(context).size.height * 0.01,
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Center(
                  child: SearchBox(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        "Top Restaurants",
                        style: GoogleFonts.notoSans(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const RestaurantBox(
                    name: 'The Halal Guys',
                    image: 'assets/eggs.png',
                    type: 'American',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const RestaurantBox(
                    name: 'Popeyes 1426 Flmst',
                    image: 'assets/eggs.png',
                    type: 'American',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const RestaurantBox(
                    name: 'Mixt - Yerba Buena',
                    image: 'assets/vegies.png',
                    type: 'American',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const RestaurantBox(
                    name: 'Split Bread - Russian',
                    image: 'assets/bread.png',
                    type: 'American',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const RestaurantBox(
                    name: 'The Halal Guys',
                    image: 'assets/sandwich.png',
                    type: 'American',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const RestaurantBox(
                    name: 'Popeyes 1426 Flmst',
                    image: 'assets/toast.png',
                    type: 'American',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const RestaurantBox(
                    name: 'The Halal Guys',
                    image: 'assets/fries.png',
                    type: 'American',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const RestaurantBox(
                    name: 'Popeyes 1426 Flmst',
                    image: 'assets/eggs.png',
                    type: 'American',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
