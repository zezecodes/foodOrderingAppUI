import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowerText extends StatelessWidget {
  final String title;
  final String title2;
  const LowerText({super.key, required this.title, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.notoSans(
                    fontSize: 24, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  title2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
