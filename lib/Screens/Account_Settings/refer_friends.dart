import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferFriends extends StatefulWidget {
  const ReferFriends({super.key});

  @override
  State<ReferFriends> createState() => _ReferFriendsState();
}

class _ReferFriendsState extends State<ReferFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Refer to Friends",
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
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100, bottom: 57),
              child: Image(image: AssetImage("assets/credit_card.png")),
            ),
            SizedBox(
              width: 350,
              height: 65,
              child: Text(
                "Refer a Friend, Get \$10",
                style: GoogleFonts.notoSans(
                    fontSize: 28, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 287,
              height: 70,
              child: Text(
                "Get \$10 in credits when someone sign up using your refer link",
                style: GoogleFonts.notoSans(
                    fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )),
    );
  }
}
