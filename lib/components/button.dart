import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String buttonName;
  final num width;
  final num height;
  final String route;
  const Buttons(
      {super.key,
      required this.buttonName,
      required this.width,
      required this.height,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route);
        },
        style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: const Color(0xFFEEA734),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          buttonName,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
