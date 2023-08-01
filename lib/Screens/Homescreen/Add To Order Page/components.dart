import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ATOComponents extends StatefulWidget {
  const ATOComponents({super.key});

  @override
  State<ATOComponents> createState() => _ATOComponentsState();
}

class _ATOComponentsState extends State<ATOComponents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("assets/bigcake.png")),
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
