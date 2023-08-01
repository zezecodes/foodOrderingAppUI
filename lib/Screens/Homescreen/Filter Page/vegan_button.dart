import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class VeganButton extends StatefulWidget {
  const VeganButton({super.key});

  @override
  State<VeganButton> createState() => _VeganButtonState();
}

class _VeganButtonState extends State<VeganButton> {
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
                    child: Text("VEGAN",
                        style: GoogleFonts.notoSans(
                            fontSize: 12, fontWeight: FontWeight.w600)),
                  ),
                ),
              );
  }
}