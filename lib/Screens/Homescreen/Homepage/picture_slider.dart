import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                    left: MediaQuery.of(context).size.width * 0.01,
                    top: MediaQuery.of(context).size.width * 0.03),
                child: Container(
                    width: 335,
                    height: 185,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/food.png")),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 10),
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
              );
  }
}