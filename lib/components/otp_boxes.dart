import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OTPBoxes extends StatelessWidget {
  const OTPBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 68,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration:
            const InputDecoration(hintText: "0", border: InputBorder.none),
        onSaved: (pin1) {},
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
