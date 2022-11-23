import 'package:dr_islam_clinic/core/widgets/horizontal_spacer.dart';
import 'package:dr_islam_clinic/core/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/ui_constants.dart';
import '../../../core/widgets/custom_card.dart';

class OurLabsScreen extends StatelessWidget {
  const OurLabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/lab.png"),
            HorizontalSpacer(10),
            Text(
              "Our Labs",
              style: TextStyle(fontSize: 22.sp),
            ),
          ],
        ),
        backgroundColor: UiConstants.kMainColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/app_background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                VerticalSpacer(30),
                CustomCard(
                  hasButton: true,
                  title: "Cairo Lab",
                  location:
                      "masr al gdida38 Abo Baker Street above United Bank",
                  firstPhoneNumber: "01006561232",
                  secondPhoneNumber: "01003256240",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
