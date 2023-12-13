import 'package:flutter/material.dart';

class BannerPicture extends StatefulWidget {
  final String? picture;
  const BannerPicture({super.key, required this.picture});

  @override
  State<BannerPicture> createState() => _BannerPictureState();
}

class _BannerPictureState extends State<BannerPicture> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03),
      child: Container(
        width: MediaQuery.of(context).size.width * 5,
        height: 185,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.picture!), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
