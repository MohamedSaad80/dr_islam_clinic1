import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HorizontalSpacer extends StatelessWidget {
  double value;
  HorizontalSpacer(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
