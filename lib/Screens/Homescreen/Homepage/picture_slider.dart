import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PictureSlider extends StatefulWidget {
  const PictureSlider({super.key});

  @override
  State<PictureSlider> createState() => _PictureSliderState();
}

class _PictureSliderState extends State<PictureSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.03,
        right: MediaQuery.of(context).size.width * 0.03,
        top: MediaQuery.of(context).size.width * 0.03,
      ),
      child: Container(
          width: MediaQuery.of(context).size.width * 3.3,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              color: Colors.amber,
              image: const DecorationImage(
                  image: AssetImage("assets/food.png"), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(15)),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 8.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
    );
  }
}
