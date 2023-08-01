import 'package:delivery_app/Screens/Homescreen/Homepage/banner_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/pictureScroll1.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/pictureScroll2.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/picture_slider.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/see_all_configs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.width * 0.08),
              child: Text(
                "Delivery To",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFFEEA734)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.25),
                  child: Text(
                    "HayStreet, Perth",
                    style: GoogleFonts.notoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_sharp))
              ],
            )
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/thirteenth");
              },
              child: Text(
                "Filter",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ))
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const PictureSlider(),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04),
                child: SeeAll(text: "Featured Partners"),
              ),

              // PictureBox One
              const PictureScroll1(),

              // Banner Picture
              BannerPicture(picture: 'assets/Banner.png'),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04),
                child: SeeAll(
                  text: 'Best Picks Restaurants by Team',
                ),
              ),

              // Picture Scroll 2
              const PictureScroll2(),
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: SeeAll(
                  text: 'All Restaurants',
                ),
              ),

              // Banner Picture 2
              BannerPicture(
                picture: 'assets/vegs.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
