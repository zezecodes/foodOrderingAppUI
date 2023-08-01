import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AnyButton extends StatefulWidget {
  const AnyButton({super.key});

  @override
  State<AnyButton> createState() => _AnyButtonState();
}

class _AnyButtonState extends State<AnyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 109,
        height: 38,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text("ANY",
              style: GoogleFonts.notoSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
