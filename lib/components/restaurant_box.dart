import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantBox extends StatelessWidget {
  final String name;
  final String image;
  final String type;
  const RestaurantBox({
    super.key, required this.name, required this.image, required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(image)),

        //Text under picture
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: Text(
            name,
            textAlign: TextAlign.left,
            style:
                GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.02),
          child: Row(
            children: [
              Text("\$\$",
                  style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686))),
              Text(type,
                  style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686)))
            ],
          ),
        )
      ],
    );
  }
}
