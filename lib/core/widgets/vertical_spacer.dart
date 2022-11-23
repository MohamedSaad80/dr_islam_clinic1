import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VerticalSpacer extends StatelessWidget {
  double value;
  VerticalSpacer(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}
