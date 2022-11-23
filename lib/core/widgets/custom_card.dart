import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dr_islam_clinic/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../labs_feature/view/screens/make_lap_request.dart';
import '../constants/ui_constants.dart';

class CustomCard extends StatelessWidget {
  String title;
  String location;
  String firstPhoneNumber;
  String secondPhoneNumber;
  bool hasButton;

  CustomCard(
      {super.key,
      required this.firstPhoneNumber,
      required this.location,
      required this.secondPhoneNumber,
      required this.title,
      this.hasButton = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(
          color: UiConstants.kMainColor,
          width: 3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
                color: UiConstants.kMainColor,
                fontSize: 28.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Iconsax.location),
              ),
              Expanded(
                child: Text(
                  location,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Iconsax.mobile),
              ),
              Expanded(
                child: Text(
                  firstPhoneNumber,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Iconsax.mobile),
              ),
              Expanded(
                child: Text(
                  secondPhoneNumber,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          ConditionalBuilder(
            condition: hasButton == true,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                  buttonHeight: 50,
                  buttonName: "Make Request",
                  onTap: () {
                    Get.to(() => const MakeLapRequest());
                  },
                ),
              );
            },
            fallback: (context) => Container(),
          ),
        ],
      ),
    );
  }
}
