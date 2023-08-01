import 'package:delivery_app/components/lower_text.dart';
import 'package:delivery_app/components/top_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindRestaurants extends StatefulWidget {
  const FindRestaurants({super.key});

  @override
  State<FindRestaurants> createState() => _FindRestaurantsState();
}

class _FindRestaurantsState extends State<FindRestaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          const TopPage(route: "/third", title: ""),
          const LowerText(
              title: "Find Restaurants near you",
              title2:
                  "Please enter your location or allow access to your location to find restaurants near you."),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/tenth");
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFFEEA734),
                        side: const BorderSide(color: Color(0xFFEEA734)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Use current location",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const Positioned(
                  top: 50,
                  bottom: 15,
                  left: 40,
                  child: Image(image: AssetImage("assets/location.png")))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on_outlined),
                  prefixIconColor: const Color(0xFF868686),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF868686))),
                  hintText: "Enter a new address",
                )),
          )
        ],
      )),
    );
  }
}
