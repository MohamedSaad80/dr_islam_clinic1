import 'package:dr_islam_clinic/core/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String labelName;
  String hintText;
  bool obscureText;

  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.labelName,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        TextFormField(
          obscureText: obscureText,
          cursorColor: UiConstants.kSecondColor,
          decoration: InputDecoration(
            hintText: hintText,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: UiConstants.kMainColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
