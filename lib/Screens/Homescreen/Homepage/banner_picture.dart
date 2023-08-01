import 'package:flutter/material.dart';

class BannerPicture extends StatefulWidget {
  String? picture;
  BannerPicture({super.key,required this.picture});

  @override
  State<BannerPicture> createState() => _BannerPictureState();
}

class _BannerPictureState extends State<BannerPicture> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01),
      child: Container(
        width: 335,
        height: 185,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.picture!)),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
