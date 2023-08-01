import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SoupsButton extends StatefulWidget {
  const SoupsButton({super.key});

  @override
  State<SoupsButton> createState() => _SoupsButtonState();
}

class _SoupsButtonState extends State<SoupsButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 87,
        height: 38,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text("SOUPS",
              style: GoogleFonts.notoSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
