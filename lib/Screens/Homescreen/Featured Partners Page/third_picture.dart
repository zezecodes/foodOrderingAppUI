import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPicture extends StatefulWidget {
  const ThirdPicture({super.key});

  @override
  State<ThirdPicture> createState() => _ThirdPictureState();
}

class _ThirdPictureState extends State<ThirdPicture> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: Column(
        children: [
          Stack(alignment: AlignmentDirectional.bottomStart, children: [
            const Image(image: AssetImage("assets/kfc.png")),

            // Time and sit on the picture
            Column(
              children: [
                Row(
                  children: [
                    const Image(image: AssetImage("assets/fast-clock.png")),
                    Text(
                      "25 mins",
                      style: GoogleFonts.notoSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Image(image: AssetImage("assets/Dollar.png")),
                    Text(
                      "Free",
                      style: GoogleFonts.notoSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 36,
                        height: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEEA734),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "4.5",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.notoSans(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ]),

          //Text under picture
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Text(
              "KFC Foods",
              style: GoogleFonts.notoSans(
                  fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ),
          Row(
            children: [
              Text("Chinese",
                  style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686))),
              Text("American",
                  style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686)))
            ],
          )
        ],
      ),
    );
  }
}
