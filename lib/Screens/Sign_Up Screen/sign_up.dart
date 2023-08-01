import 'package:delivery_app/components/top_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            const TopPage(route: "/third", title: "Sign Up"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.01,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Text(
                  "Create Account",
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
                    "Enter your Name, Email and Password ",
                    style: GoogleFonts.notoSans(fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.065),
              child: Row(children: [
                Text(
                  "for sign up",
                  style: GoogleFonts.notoSans(fontSize: 16),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/seventh");
                    },
                    child: Text(
                      "Already have an account? ",
                      style: GoogleFonts.notoSans(fontSize: 16),
                    ))
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
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
                      hintText: "Full Name",
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
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
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: TextFormField(
                  obscureText: !_isVisible,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          icon: _isVisible
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.black,
                                ))),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/seventh");
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.04,
                  left: MediaQuery.of(context).size.width * 0.06),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              "Or",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Stack(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("");
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color(0xFF395998),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "CONNECT WITH FACEBOOK",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const Positioned(
                  top: 10,
                  left: 30,
                  child: Image(image: AssetImage("assets/facebook.png"))),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Stack(children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("");
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color(0xFF4285F4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "CONNECT WITH GOOGLE",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const Positioned(
                  top: 10,
                  left: 30,
                  child: Image(image: AssetImage("assets/google.png"))),
            ])
          ],
        )));
  }
}
