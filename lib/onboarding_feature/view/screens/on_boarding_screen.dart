import 'package:dr_islam_clinic/onboarding_feature/controller/page_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_dots_indicator.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/on_boarding_header.dart';
import '../widgets/page_view_item.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController pageViewController = PageController();
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      init: OnBoardingController(),
      builder: (onBoardingController) {
        return Scaffold(
          body: Column(
            children: [
              const OnBoardingHeader(),
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageViewController,
                      itemBuilder: (context, index) {
                        return PageViewItem(
                          itemIndex: index,
                          onBoardingController: onBoardingController,
                        );
                      },
                      itemCount: 2,
                      onPageChanged: (index) {
                        onBoardingController.changeIndicatorIndex(
                          newDotsIndicatorIndexValue: index,
                        );
                      },
                    ),
                    CustomDotsIndicator(
                      dotsCount: onBoardingController.pageViewData.length,
                      position: (onBoardingController.currentDotsIndicatorIndex)
                          .toDouble(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: CustomFloatingButton(
            onBoardingController: onBoardingController,
            pageViewController: pageViewController,
          ),
        );
      },
    );
  }
}
