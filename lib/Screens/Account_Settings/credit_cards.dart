import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCards extends StatefulWidget {
  const CreditCards({super.key});

  @override
  State<CreditCards> createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Payment Methods",
          style:
              GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
            splashRadius: 1,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/paypal.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Text(
                          "PayPal",
                          style: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        "Default Payments",
                        style: GoogleFonts.notoSans(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 150),
                    onPressed: () {
                      Navigator.of(context).pushNamed("");
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/mastercard.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "MasterCard",
                          style: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        "Not Default",
                        style: GoogleFonts.notoSans(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 190),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/twentysecond");
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage("assets/visa.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Text(
                          "Visa",
                          style: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        "Not Default",
                        style: GoogleFonts.notoSans(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 193),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/twentysecond");
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          )
        ],
      )),
    );
  }
}
