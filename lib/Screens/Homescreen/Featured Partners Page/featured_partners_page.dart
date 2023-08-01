import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/fifth_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/first_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/fourth_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/second_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/sixth_picture.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/third_picture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedPartners extends StatefulWidget {
  const FeaturedPartners({super.key});

  @override
  State<FeaturedPartners> createState() => _FeaturedPartnersState();
}

class _FeaturedPartnersState extends State<FeaturedPartners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
              splashRadius: 1,
              onPressed: () {
                Navigator.of(context).pushNamed("/tenth");
              },
              icon: const Icon(Icons.arrow_back_ios_rounded)),
          title: Text(
            "Featured Partners",
            style:
                GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w600),
          )),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            children: [
              // First Picture Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Picture One
                  const FirstPicture(),
                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02)),
                  // Picture two
                  const SecondPicture()
                ],
              ),

              //  Second Picture Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Picture One
                  const ThirdPicture(),
                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02)),

                  // Picture two
                  const FourthPicture()
                ],
              ),

              // Third picture row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Picture One
                  const FifthPicture(),

                  Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.02)),

                  // Picture two
                  const SixthPicture()
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
