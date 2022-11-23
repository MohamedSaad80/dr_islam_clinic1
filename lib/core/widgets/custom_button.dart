import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/ui_constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String buttonName;
  double buttonHeight;
  void Function()? onTap;
  CustomButton({
    super.key,
    required this.buttonHeight,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: buttonHeight,
        decoration: const BoxDecoration(
          color: UiConstants.kMainColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
