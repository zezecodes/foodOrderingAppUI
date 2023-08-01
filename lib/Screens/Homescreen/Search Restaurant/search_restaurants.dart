import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchRestaurantsPage extends StatefulWidget {
  const SearchRestaurantsPage({super.key});

  @override
  State<SearchRestaurantsPage> createState() => _SearchRestaurantsPageState();
}

class _SearchRestaurantsPageState extends State<SearchRestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Search",
          style:
              GoogleFonts.notoSans(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: TextFormField(
                      cursorHeight: 20,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF868686),
                        ),
                        prefixIconColor: const Color(0xFF868686),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xFF868686))),
                        hintText: "Search on Foodly",
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        "Top Restaurants",
                        style: GoogleFonts.notoSans(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/fries.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "The Halal Guys",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/eggs.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Popeyes 1426 Flmst",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/vegies.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Mixt - Yerba Buena",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/bread.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Split Bread - Russian",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/sandwich.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "The Halal Guys",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/toast.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Popeyes 1426 Flmst",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/fries.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "The Halal Guys",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Image(image: AssetImage("assets/eggs.png")),

                        //Text under picture
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.02),
                          child: Text(
                            "Popeyes 1426 Flmst",
                            style: GoogleFonts.notoSans(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Text("\$\$",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686))),
                            Text("American",
                                style: GoogleFonts.notoSans(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF868686)))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
