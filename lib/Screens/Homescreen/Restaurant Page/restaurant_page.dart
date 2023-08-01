import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CakePage extends StatefulWidget {
  const CakePage({super.key});

  @override
  State<CakePage> createState() => _CakePageState();
}

class _CakePageState extends State<CakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.ios_share_rounded),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.01,
                    ),
                    child: Container(
                        width: 400,
                        height: 300,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/bigcake.png")),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: 8.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              StepProgressIndicator(
                                totalSteps: 5,
                                size: 5,
                                padding: 2,
                                mainAxisAlignment: MainAxisAlignment.center,
                                roundedEdges: Radius.circular(50),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Text(
                          "Mayfield Bakery & Cafe",
                          style: GoogleFonts.notoSans(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("4.3  ",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w300)),
                        const Image(image: AssetImage("assets/Star.png")),
                        Text("  200+ Ratings",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w300))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/dollars.png")),
                        Column(
                          children: [
                            Text("Free",
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const Text("Delivery")
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(image: AssetImage("assets/clock.png")),
                        Column(
                          children: [
                            Text("25",
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            const Text("Minutes")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("/eighteenth");
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(
                                      color: Color(0xFFEEA734)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                "TAKE AWAY",
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Featured Items",
                          style: GoogleFonts.notoSans(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Image(
                                  image: AssetImage("assets/cookie.png")),
                              Text("Cookie Sandwich",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300)),
                              Text("\$\$ Chinese",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              const Image(
                                  image: AssetImage("assets/spaghetti.png")),
                              Text("MaMa Lit Indomie",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300)),
                              Text("\$\$ Chinese",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              const Image(
                                  image: AssetImage("assets/cookie.png")),
                              Text("Cookie Sandwich",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300)),
                              Text("\$\$ Chinese",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              const Image(
                                  image: AssetImage("assets/cookie.png")),
                              Text("Cookie Sandwich",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300)),
                              Text("\$\$ Chinese",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Beef & Lamb",
                            style: GoogleFonts.notoSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text("Seafood",
                              style: GoogleFonts.notoSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey))),
                      TextButton(
                          onPressed: () {},
                          child: Text("Appetizers",
                              style: GoogleFonts.notoSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey))),
                      TextButton(
                          onPressed: () {},
                          child: Text("Desserts",
                              style: GoogleFonts.notoSans(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey)))
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Row(
                      children: [
                        Text("Most Populars",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/biscuit.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("Cookie Sandwich",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$\$ Chinese",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/potato.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("Combo Burger",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$\$ Chinese",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/brodo.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Text(
                                "Combo Sandwich",
                                style: GoogleFonts.notoSans(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$\$ Chinese",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: Row(
                      children: [
                        Text("Sea Foods",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/oyster.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text(
                                "Oyster Dish",
                                style: GoogleFonts.notoSans(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$\$ Chinese",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/oysters.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text("Oyster On Ice",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$\$ Chinese",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/potato.png")),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 80),
                              child: Text("Rice On Pot",
                                  style: GoogleFonts.notoSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$\$ Chinese",
                                    style: GoogleFonts.notoSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("AUD\$10",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFEEA734)))),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
