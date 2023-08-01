import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DinnerButton extends StatefulWidget {
  const DinnerButton({super.key});

  @override
  State<DinnerButton> createState() => _DinnerButtonState();
}

class _DinnerButtonState extends State<DinnerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  width: 100,
                  height: 38,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text("DINNER",
                        style: GoogleFonts.notoSans(
                            fontSize: 12, fontWeight: FontWeight.w600)),
                  ),
                ),
              );
  }
}