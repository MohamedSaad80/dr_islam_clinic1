import 'package:dr_islam_clinic/auth_feature/view/screens/register_screen.dart';
import 'package:dr_islam_clinic/core/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/vertical_spacer.dart';
import '../../../main_view_feature/views/screens/main_view_screen.dart';
import '../widgets/auth_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                      labelName: "Email",
                      hintText: "Enter your email",
                      obscureText: false,
                    ),
                    VerticalSpacer(40.h),
                    CustomTextFormField(
                      labelName: "Password",
                      hintText: "Enter your password",
                      obscureText: true,
                    ),
                    VerticalSpacer(20.h),
                    Text(
                      "Forgot Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                      ),
                    ),
                    VerticalSpacer(50.h),
                    CustomButton(
                      buttonName: "Login",
                      buttonHeight: 50.h,
                      onTap: () {
                        Get.to(() =>const MainViewScreen());
                      },
                    ),
                    VerticalSpacer(30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t have an account yet? "),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const RegisterScreen());
                          },
                          child: const Text(
                            "Register here",
                            style: TextStyle(color: UiConstants.kSecondColor),
                          ),
                        ),
                      ],
                    )
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
