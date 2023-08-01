import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  final int totalSteps = 3;
  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: const Image(image: AssetImage("assets/logo.png")),
                ),
                const Image(image: AssetImage("assets/TamangFoodService.png"))
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: SizedBox(
              width: 250,
              height: 250,
              child: Image(
                  image: AssetImage((currentStep == 1)
                      ? "assets/egg.png"
                      : (currentStep == 2)
                          ? "assets/motor.png"
                          : "assets/pizza.png")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.02),
            child: Text(
                (currentStep == 1)
                    ? "All your favourites"
                    : (currentStep == 2)
                        ? "Free delivery offers"
                        : "Choose your food",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w700)),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.04),
            child: Text(
              (currentStep == 1)
                  ? "Order from the best local restaurants with easy, on-demand delivery."
                  : (currentStep == 2)
                      ? "Free delivery for new customers via Apple Pay and others payment methods."
                      : "Easily find your type of food craving and you’ll get delivery in wide range.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.04),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              child: StepProgressIndicator(
                selectedColor: const Color.fromARGB(255, 9, 186, 15),
                roundedEdges: const Radius.circular(50),
                size: 5,
                totalSteps: totalSteps,
                currentStep: currentStep,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.06,
            child: ElevatedButton(
              onPressed: () {
                if (currentStep < totalSteps) {
                  setState(() {
                    currentStep = currentStep + 1;
                  });
                } else {
                  Navigator.of(context).pushNamed("/third");
                }
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Color(0xFFEEA734),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}
