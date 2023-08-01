import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BrunchButton extends StatefulWidget {
  const BrunchButton({super.key});

  @override
  State<BrunchButton> createState() => _BrunchButtonState();
}

class _BrunchButtonState extends State<BrunchButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 110,
        height: 38,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text("BRUNCH",
              style: GoogleFonts.notoSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
