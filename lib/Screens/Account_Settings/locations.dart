import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Locations",
          style:
              GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
            splashRadius: 1,
            onPressed: () {
              Navigator.of(context).pushNamed("/fourteenth");
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF868686),
                    ),
                    prefixIconColor: const Color(0xFF868686),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 219, 216, 216))),
                    hintText: "Search new address",
                  )),
            ),
          )
        ],
      )),
    );
  }
}
