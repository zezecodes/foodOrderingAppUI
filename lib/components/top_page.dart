import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPage extends StatelessWidget {
  final String title;
  final String route;
  const TopPage({super.key, required this.route, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.02,
              // right: MediaQuery.of(context).size.width * 0.09
            ),
            child: IconButton(
              splashRadius: 1,
              onPressed: () {
                Navigator.of(context).pushNamed(route);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.65),
            child: Text(title,
                style: GoogleFonts.notoSans(
                    fontSize: 20, fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
