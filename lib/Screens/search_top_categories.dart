import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCategoriesSearch extends StatefulWidget {
  const TopCategoriesSearch({super.key});

  @override
  State<TopCategoriesSearch> createState() => _TopCategoriesSearchState();
}

class _TopCategoriesSearchState extends State<TopCategoriesSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.search_sharp,
            color: Colors.grey,
            size: 34,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Search",
          style:
              GoogleFonts.notoSans(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 35, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Top Categories ",
                    style: GoogleFonts.notoSans(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(image: AssetImage("assets/fastfood.png")),
                  Text(
                    "Fast Food",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 20,
                ),
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(
                      image: AssetImage("assets/breakfastandbrunch.png")),
                  Text(
                    "Breakfast & Brunch",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    const Image(image: AssetImage("assets/mexican.png")),
                    Text(
                      "Mexican",
                      style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(alignment: AlignmentDirectional.center, children: [
                  Image(image: AssetImage("assets/bakery.png")),
                  Text(
                    "Bakery",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(image: AssetImage("assets/deserts.png")),
                  Text(
                    "Deserts",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 20,
                ),
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(image: AssetImage("assets/burgers.png")),
                  Text(
                    "Burgers",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(image: AssetImage("assets/fastfood.png")),
                  Text(
                    "Fast Food",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 20,
                ),
                Stack(alignment: AlignmentDirectional.center, children: [
                  const Image(image: AssetImage("assets/breakfastandbrunch.png")),
                  Text(
                    "Fast Food",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage("assets/fastfood.png")),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage("assets/breakfastandbrunch.png"))
              ],
            )
          ],
        )),
      ),
    );
  }
}
