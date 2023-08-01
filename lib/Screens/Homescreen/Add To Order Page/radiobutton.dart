import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text(
              "Chocolate Chip",
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.w400),
            )
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("Cookies and Cream",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("Funfetti",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("M and M",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("Red Velvet",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("Peanut Butter",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("Snickerdoodle",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        ),
        Row(
          children: [
            const Radio(value: null, groupValue: null, onChanged: null),
            Text("White Chocolate Macadamia",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400))
          ],
        )
      ],
    );
  }
}
