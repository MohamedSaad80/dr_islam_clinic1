import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constants/ui_constants.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/vertical_spacer.dart';
import '../../../main_view_feature/views/screens/main_view_screen.dart';
import '../widgets/auth_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiConstants.kMainColor,
      body: Column(
        children: [
          const AuthHeader(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView(
                  children: [
                    VerticalSpacer(10.h),
                    CustomTextFormField(
                      labelName: "Name",
                      hintText: "Enter your name",
                      obscureText: false,
                    ),
                    VerticalSpacer(30.h),
                    CustomTextFormField(
                      labelName: "Email",
                      hintText: "Enter your email",
                      obscureText: false,
                    ),
                    VerticalSpacer(30.h),
                    CustomTextFormField(
                      labelName: "Phone Number",
                      hintText: "Enter your phone number",
                      obscureText: false,
                    ),
                    VerticalSpacer(30.h),
                    CustomTextFormField(
                      labelName: "Password",
                      hintText: "Enter your  password",
                      obscureText: true,
                    ),
                    VerticalSpacer(30.h),
                    CustomTextFormField(
                      labelName: "Confirm Password",
                      hintText: "Enter your  password",
                      obscureText: true,
                    ),
                    VerticalSpacer(30.h),
                    CustomButton(
                      buttonName: "Register",
                      buttonHeight: 50.h,
                      onTap: () {
                        Get.to(() =>const MainViewScreen());
                      },
                    ),
                    VerticalSpacer(20.h),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
