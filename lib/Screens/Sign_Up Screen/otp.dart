import 'package:delivery_app/components/lower_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.02),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        Navigator.of(context).pushNamed("/seventh");
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: Text("Login To Foodly",
                        style: GoogleFonts.notoSans(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            const LowerText(
                title: "Verify phone number",
                title2: "Enter the 4-Digit code sent to you at +610489632578"),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: OTPTextField(
                spaceBetween: 10,
                width: 255,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 10,
                fieldWidth: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/ninth");
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "CONTINUE",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive code?",
                  style: GoogleFonts.notoSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF868686)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Resend Code",
                      style: GoogleFonts.notoSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFEEA734))),
                )
              ],
            ),
            SizedBox(
              width: 290,
              child: Text(
                "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF868686)),
              ),
            )
          ]),
        ));
  }
}
