import 'package:delivery_app/components/top_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            const TopPage(route: "/second", title: "Sign In"),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.01),
                child: Text(
                  "Welcome to Tamang Food Services",
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
                  "Enter your Phone number or Email address for sign in. Enjoy your food :)",
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
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/fourth");
                },
                child: Text(
                  "Forgot Password?",
                  style:
                      GoogleFonts.notoSans(fontSize: 16, color: Colors.black),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/ninth");
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Color(0xFFEEA734),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "SIGN IN",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.04,
                      left: MediaQuery.of(context).size.width * 0.06),
                  child: Text(
                    "Don't have an account?",
                    style: GoogleFonts.notoSans(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.04),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sixth");
                      },
                      child: Text(
                        "Create new account",
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFEEA734)),
                      )),
                ),
              ],
            ),
            Text(
              "Or",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
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
