import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/ui_constants.dart';
import '../../controller/page_view_controller.dart';

class PageViewItem extends StatelessWidget {
  final int itemIndex;
  final OnBoardingController onBoardingController;

  const PageViewItem({
    super.key,
    required this.itemIndex,
    required this.onBoardingController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50.h,
        ),
        Text(
          onBoardingController.pageViewData[itemIndex].title,
          style: TextStyle(
            color: UiConstants.kSecondColor,
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            onBoardingController.pageViewData[itemIndex].subTitle,
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: "cairo",
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
