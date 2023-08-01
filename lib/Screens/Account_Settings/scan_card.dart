import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScanCard extends StatefulWidget {
  const ScanCard({super.key});

  @override
  State<ScanCard> createState() => _ScanCardState();
}

class _ScanCardState extends State<ScanCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: AssetImage("assets/tesla.png")),
    );
  }
}
