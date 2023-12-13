import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAll extends StatelessWidget {
  final String text;
  const SeeAll({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Text(
            text,
            style:
                GoogleFonts.notoSans(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFF8B64C)),
              )),
        )
      ],
    );
  }
}
