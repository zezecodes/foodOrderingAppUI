import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetEmail extends StatefulWidget {
  const ResetEmail({super.key});

  @override
  State<ResetEmail> createState() => _ResetEmailState();
}

class _ResetEmailState extends State<ResetEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Reset Password",
          style:
              GoogleFonts.notoSans(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
            splashRadius: 1,
            onPressed: () {
              Navigator.of(context).pushNamed("/fourth");
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.01),
              child: Text(
                "Reset Email Sent",
                style: GoogleFonts.notoSans(
                    fontSize: 33, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.065),
            child: Row(
              children: [
                Text(
                  "We have sent an instruction email to sajin ",
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.065),
            child: Row(children: [
              Text(
                "tamang@figma.com",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/seventh");
                  },
                  child: Text(
                    "Having problems? ",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, color: Color(0xFFEEA734)),
                  ))
            ]),
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
                Navigator.of(context).pushNamed("/fourth");
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: const Color(0xFFEEA734),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "SEND AGAIN",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          const Image(image: AssetImage("assets/coffeeMAN.png"))
        ],
      )),
    );
  }
}
