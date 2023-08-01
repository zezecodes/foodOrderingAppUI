import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              width: size.width * 1.1,
              height: size.height * 0.53,
              top: -65,
              left: -70,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 241, 217)),
              ),
            ),
            Positioned(
                width: size.width * 0.2,
                height: size.height * 0.3,
                top: size.height * 0.01,
                left: size.width * 0.1,
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                )),
            Positioned(
                width: size.width * 0.65,
                height: size.height * 0.3,
                top: size.height * 0.01,
                left: size.width * 0.28,
                child: const Image(
                    image: AssetImage("assets/TamangFoodService.png"))),
            Positioned(
              width: size.width * 0.5,
              height: size.height * 4.5,
              top: size.height * 0.24,
              left: size.width * 0.23,
              child: SizedBox(
                width: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Image(image: AssetImage("assets/person.png")),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.55,
              left: size.width * 0.3,
              child: Text(
                "Welcome",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            Positioned(
              top: size.height * 0.65,
              left: size.height * 0.07,
              child: SizedBox(
                width: size.width * 0.8,
                child: Text(
                  "It's a pleasure to meet you. We are excited that you're here so let's get started!",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Positioned(
                top: size.height * 0.8,
                left: size.width * 0.1,
                child: SizedBox(
                  width: size.width * 0.8,
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/second");
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: const Color(0xFFEEA734),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
