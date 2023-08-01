import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerButton extends StatefulWidget {
  const BurgerButton({super.key});

  @override
  State<BurgerButton> createState() => _BurgerButtonState();
}

class _BurgerButtonState extends State<BurgerButton> {
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
          child: Text("BURGERS",
              style: GoogleFonts.notoSans(
                  fontSize: 12, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
