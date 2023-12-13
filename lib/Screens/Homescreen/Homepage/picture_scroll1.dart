import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PictureScroll1 extends StatefulWidget {

  const PictureScroll1(
      {super.key,});

  @override
  State<PictureScroll1> createState() => _PictureScroll1State();
}

class _PictureScroll1State extends State<PictureScroll1> {
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
      height: MediaQuery.of(context).size.height * 0.28,
      // width: MediaQuery.of(context).size.width * 2,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child:
                    Image.asset(mappings![index]['image'], fit: BoxFit.cover),
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
        itemCount: mappings!.length,
      ),
    );
  }
}


    // SingleChildScrollView(
    //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //   scrollDirection: Axis.horizontal,
    //   physics: const BouncingScrollPhysics(),
    //   child: Row(
    //     children: [
    //       Column(
    //         children: [
    //           Container(
    //             // padding: const EdgeInsets.symmetric(horizontal: 25),
    //             width: MediaQuery.of(context).size.width * 0.9,
    //             height: MediaQuery.of(context).size.height * 0.2,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //               image: DecorationImage(
    //                   image: AssetImage(mappings.indexOf()), fit: BoxFit.fill),
    //             ),
    //           ),
    //           Text(
    //             widget.name,
    //             style: GoogleFonts.openSans(
    //               fontSize: 20,
    //             ),
    //           ),
    //           Text(
    //             widget.location,
    //             style: GoogleFonts.openSans(
    //               fontSize: 20,
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         width: MediaQuery.of(context).size.width * 0.13,
    //       ),
    //       Column(
    //         children: [
    //           Container(
    //             width: MediaQuery.of(context).size.width * 0.9,
    //             height: MediaQuery.of(context).size.height * 0.2,
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 image: DecorationImage(
    //                     image: AssetImage(widget.image), fit: BoxFit.fill)),
    //           ),
    //           Text(
    //             widget.name,
    //             style: GoogleFonts.openSans(
    //               fontSize: 20,
    //             ),
    //           ),
    //           Text(
    //             widget.location,
    //             style: GoogleFonts.openSans(
    //               fontSize: 20,
    //             ),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );