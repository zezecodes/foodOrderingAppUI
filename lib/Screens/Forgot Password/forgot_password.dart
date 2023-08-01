import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02),
                  child: IconButton(
                    splashRadius: 1,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/third");
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text("Forgot Password",
                      style: GoogleFonts.notoSans(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01),
              child: Text(
                "Forgot Password",
                style: GoogleFonts.notoSans(
                    fontSize: 33, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01,
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.04),
              child: Text(
                "Enter your email address and we will send you a reset instructions.",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF868686)),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  fillColor: Colors.amber,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black)),
                  hintText: "E-mail",
                )),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/fifth");
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: const Color(0xFFEEA734),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "RESET PASSWORD",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
