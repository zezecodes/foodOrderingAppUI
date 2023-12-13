import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PictureScroll2 extends StatefulWidget {
  const PictureScroll2({super.key});

  @override
  State<PictureScroll2> createState() => _PictureScroll2State();
}

class _PictureScroll2State extends State<PictureScroll2> {
  List<Map<String, dynamic>>? mappings = [
    {
      'image': "assets/coffee.png",
      'name': 'Krispy Kreme',
      'location': 'St Georgece Terrace, Perth'
    },
    {
      'image': "assets/rice_bowl.png",
      'name': 'Mario Italiano',
      'location': 'Hay Street, Perth City'
    },
  ];

  List<Map<String, dynamic>>? secondMappings = [
    {
      'image': "assets/chips.png",
      'name': 'McDonalds',
      'location': 'Hay Street, Perth City'
    },
    {
      'image': "assets/hamburger.png",
      'name': 'The Halal Guys',
      'location': 'Hay Street, Perth City'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 160,
                height: 200,
                decoration: const BoxDecoration(),
                child: Image.asset(secondMappings![index]['image']),
              ),
              Text(mappings![index]['name'],
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  )),
              Text(mappings![index]['location'],
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  )),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: MediaQuery.of(context).size.width * 0.05);
        },
        itemCount: 2,
      ),
    );
  }
}
