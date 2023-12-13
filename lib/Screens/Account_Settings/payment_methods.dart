import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
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
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 153, bottom: 57),
              child: Image(image: AssetImage("assets/credit_card.png")),
            ),
            SizedBox(
              width: 232,
              height: 95,
              child: Text(
                "Don't have any card :)",
                style: GoogleFonts.notoSans(
                    fontSize: 28, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 287,
              height: 70,
              child: Text(
                "It’s seems like you have not added any credit or debit card. You may easily add card.",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.18),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/eighteenth");
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Color(0xFFEEA734)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "CHANGE SETTINGS",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFEEA734)),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
