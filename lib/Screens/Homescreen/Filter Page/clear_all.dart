import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClearAll extends StatelessWidget {
  String rowIdentification;
  ClearAll({super.key, required this.rowIdentification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
      child: Row(children: [
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
          child: Text(
            rowIdentification,
            style:
                GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.57),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Clear all",
                style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              )),
        )
      ]),
    );
  }
}
