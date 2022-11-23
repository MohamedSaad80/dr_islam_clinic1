import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../auth_feature/view/screens/login_screen.dart';
import '../../../core/constants/ui_constants.dart';
import '../../controller/page_view_controller.dart';

// ignore: must_be_immutable
class CustomFloatingButton extends StatelessWidget {
  OnBoardingController onBoardingController;
  PageController pageViewController;

  CustomFloatingButton({
    super.key,
    required this.onBoardingController,
    required this.pageViewController,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: UiConstants.kMainColor,
      child: const Icon(
        Icons.arrow_forward,
        color: UiConstants.kSecondColor,
      ),
      onPressed: () {
        if (onBoardingController.currentDotsIndicatorIndex == 0) {
          onBoardingController.changeIndicatorIndex(
              newDotsIndicatorIndexValue:
                  onBoardingController.currentDotsIndicatorIndex + 1);
          pageViewController.animateToPage(
            onBoardingController.currentDotsIndicatorIndex,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
          );
        } else {
          Get.to(
            () => const LoginScreen(),
          );
        }
      },
    );
  }
}
