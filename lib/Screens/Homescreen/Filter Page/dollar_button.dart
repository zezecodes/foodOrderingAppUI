import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DollarButton extends StatefulWidget {
  String? dollarSign;

  DollarButton({super.key, this.dollarSign});

  @override
  State<DollarButton> createState() => _DollarButtonState();
}

class _DollarButtonState extends State<DollarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
            color: Color(0xFFF1F1F1), shape: BoxShape.circle),
        child: Center(
          child: Text(
            widget.dollarSign!,
            style:
                GoogleFonts.notoSans(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
