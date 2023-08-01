import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ChineseButton extends StatefulWidget {
  const ChineseButton({super.key});

  @override
  State<ChineseButton> createState() => _ChineseButtonState();
}

class _ChineseButtonState extends State<ChineseButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 107,
        height: 38,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text("CHINESE",
              style: GoogleFonts.notoSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
