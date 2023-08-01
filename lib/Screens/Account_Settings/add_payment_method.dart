import 'package:delivery_app/components/lower_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
            splashRadius: 1,
            onPressed: () {
              Navigator.of(context).pushNamed("/eighteenth");
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
        child: Column(children: [
          const LowerText(
              title: "Add your payment methods",
              title2:
                  "This card will only be charged when you place an order."),
          CreditCardForm(
            formKey: formKey,
            obscureCvv: true,
            obscureNumber: true,
            cardNumber: cardNumber,
            cvvCode: cvvCode,
            isHolderNameVisible: true,
            isCardNumberVisible: true,
            isExpiryDateVisible: true,
            cardHolderName: cardHolderName,
            expiryDate: expiryDate,
            themeColor: Colors.blue,
            textColor: Colors.black,
            cardNumberDecoration: InputDecoration(
              prefixIcon: const Image(image: AssetImage("assets/card.png")),
              hintText: '4343 4343 4343 4343',
              hintStyle: const TextStyle(color: Color(0xFF868686)),
              focusedBorder: border,
              enabledBorder: border,
            ),
            expiryDateDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Color(0xFF868686)),
              focusedBorder: border,
              enabledBorder: border,
              hintText: 'MM/YY',
            ),
            cvvCodeDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Color(0xFF868686)),
              focusedBorder: border,
              enabledBorder: border,
              hintText: 'CVV',
            ),
            cardHolderDecoration: InputDecoration(
              hintStyle: const TextStyle(color: Color(0xFF868686)),
              focusedBorder: border,
              enabledBorder: border,
              hintText: 'Card Holder',
            ),
            onCreditCardModelChange: onCreditCardModelChange,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/ninth");
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: const Color(0xFFEEA734),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "ADD CARD",
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("");
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFFEEA734),
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "SCAN CARD",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 110),
                child: Image(image: AssetImage("assets/camera.png")),
              )
            ],
          ),
        ]),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
