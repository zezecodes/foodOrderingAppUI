import 'package:delivery_app/Screens/Homescreen/Add%20To%20Order%20Page/components.dart';
import 'package:delivery_app/Screens/Homescreen/Add%20To%20Order%20Page/radiobutton.dart';
import 'package:delivery_app/components/button.dart';
import 'package:delivery_app/components/coloredButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToOrder extends StatefulWidget {
  const AddToOrder({super.key});

  @override
  State<AddToOrder> createState() => _AddToOrderState();
}

class _AddToOrderState extends State<AddToOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cancel_rounded,
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Column(
          children: [
            // Picture changing component on the top of the screen
            const ATOComponents(),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Text(
                    "Cookie Sandwich",
                    style: GoogleFonts.notoSans(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.",
                  style: GoogleFonts.notoSans(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("\$\$  ",
                      style: GoogleFonts.notoSans(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Text(
                    "  Chinese",
                    style: GoogleFonts.notoSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text("  American",
                      style: GoogleFonts.notoSans(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Text("  Deshi Food",
                      style: GoogleFonts.notoSans(
                          fontSize: 16, fontWeight: FontWeight.w400))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 34),
              child: Row(
                children: [
                  Text(
                    "Choice of top Cookie",
                    style: GoogleFonts.notoSans(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: ColoredButton(
                        buttonName: "REQUIRED",
                        width: 0.3,
                        height: 0.05,
                        route: ''),
                  ),
                ],
              ),
            ),
            const RadioButton(),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 34),
              child: Row(
                children: [
                  Text(
                    "Choice of bottom Cookie",
                    style: GoogleFonts.notoSans(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: ColoredButton(
                        buttonName: "REQUIRED",
                        width: 0.3,
                        height: 0.05,
                        route: ''),
                  ),
                ],
              ),
            ),
            const RadioButton(),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 213, 213),
                        shape: BoxShape.circle),
                    child: MaterialButton(
                        onPressed: () {}, child: const Icon(Icons.add)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 216, 213, 213),
                        shape: BoxShape.circle),
                    child: MaterialButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.minimize),
                        )),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 20),
              child: Buttons(
                buttonName: "ADD TO ORDER ()",
                height: 0.07,
                route: '',
                width: 0.8,
              ),
            )
          ],
        )),
      ),
    );
  }
}
