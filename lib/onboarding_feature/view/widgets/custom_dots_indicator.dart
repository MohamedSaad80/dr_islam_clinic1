import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/ui_constants.dart';

// ignore: must_be_immutable
class CustomDotsIndicator extends StatelessWidget {
  double position;
  int dotsCount;

  CustomDotsIndicator({
    super.key,
    required this.position,
    required this.dotsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 140.h,
      left: 0,
      right: 0,
      child: DotsIndicator(
        position:
            position, 
        dotsCount: dotsCount, 
        decorator: DotsDecorator(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(
              color: UiConstants.kMainColor,
            ),
          ),
          color: Colors.transparent,
          activeColor: UiConstants.kMainColor,
        ),
      ),
    );
  }
}
