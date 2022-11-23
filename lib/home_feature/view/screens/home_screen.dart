import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_islam_clinic/core/constants/ui_constants.dart';
import 'package:dr_islam_clinic/core/widgets/horizontal_spacer.dart';
import 'package:dr_islam_clinic/core/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../clinics_feature/view/screens/our_clinics_screen.dart';
import '../../../labs_feature/view/screens/our_labs_screen.dart';
import '../../../pharmacy_feature/view/screens/our_pharmacies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/app_background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              VerticalSpacer(15.h),
              CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.25,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
                items: [
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Ads 1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: UiConstants.kMainColor),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Ads 2.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: UiConstants.kMainColor),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Ads 3.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: UiConstants.kMainColor),
                    ),
                  ),
                ],
              ),
              VerticalSpacer(15.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const OurClinicsScreen());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 75.h,
                    decoration: const BoxDecoration(
                      color: UiConstants.kMainColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Iconsax.hospital,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Our Clinics",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        HorizontalSpacer(20)
                      ],
                    ),
                  ),
                ),
              ),
              VerticalSpacer(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const OurLabsScreen());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 120.h,
                        decoration: const BoxDecoration(
                          color: UiConstants.kMainColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/lab.png"),
                            Text(
                              "Our Laboratory",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const OurPharmacies());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 120.h,
                        decoration: const BoxDecoration(
                          color: UiConstants.kMainColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/Pharmacies.png"),
                            Text(
                              "Our Pharmacies",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
