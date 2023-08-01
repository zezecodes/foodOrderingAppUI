import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AllButton extends StatefulWidget {
  const AllButton({super.key});

  @override
  State<AllButton> createState() => _AllButtonState();
}

class _AllButtonState extends State<AllButton> {
  final Color _containerColor = const Color(0xFFEEA734);
  final bool _hasBeenTapped = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_hasBeenTapped == true) {
          setState(() {
            const Color(0xFFF1F1F1) == _containerColor;
          });
        }
      },
      child: Container(
        width: 80,
        height: 38,
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "ALL",
            style:
                GoogleFonts.notoSans(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
