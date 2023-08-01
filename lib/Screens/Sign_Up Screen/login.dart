import 'package:delivery_app/components/lower_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02),
                  child: IconButton(
                    splashRadius: 1,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/sixth");
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.08),
                    child: Text("Login to Tamang Food Services",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSans(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                )
              ],
            ),
          ),
          const LowerText(
            title: "Get started with Foodly",
            title2:
                "Enter your phone number to use foodly and enjoy your food :) ",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 4))
                        ],
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.13))),
                    child: Stack(
                      children: [
                        // InternationalPhoneNumberInput(
                        //   selectorConfig: const SelectorConfig(
                        //       selectorType: PhoneInputSelectorType.DROPDOWN),
                        //   errorMessage: "Invalid Phone Number",
                        //   cursorColor: Colors.black,
                        //   onInputChanged: (value) {},
                        //   inputDecoration: InputDecoration(
                        //       border: InputBorder.none,
                        //       hintText: "Phone Number",
                        //       hintStyle: GoogleFonts.firaSans(
                        //           color: Colors.grey[500], fontSize: 16)),
                        // )
                        
                  ],
                    )),
              ),
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/eighth");
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
          ),
        ],
      )),
    );
  }
}
