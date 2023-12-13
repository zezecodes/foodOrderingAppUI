import 'package:delivery_app/components/lower_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialAccounts extends StatefulWidget {
  const SocialAccounts({super.key});

  @override
  State<SocialAccounts> createState() => _SocialAccountsState();
}

class _SocialAccountsState extends State<SocialAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Add Social Accounts",
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
          const LowerText(
              title: "Add Social Accounts",
              title2:
                  "Add your social accounts for more security. You will go directly to their site."),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.034,
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
                        borderRadius: BorderRadius.circular(10))),
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
                        borderRadius: BorderRadius.circular(10))),
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
      )),
    );
  }
}
