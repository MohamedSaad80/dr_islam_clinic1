import 'package:dr_islam_clinic/core/constants/ui_constants.dart';
import 'package:dr_islam_clinic/core/widgets/horizontal_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/widgets/custom_card.dart';

class OurClinicsScreen extends StatelessWidget {
  const OurClinicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(
              Iconsax.hospital,
              color: Colors.white,
              size: 40,
            ),
            HorizontalSpacer(10),
            Text(
              "Our Clinics",
              style: TextStyle(fontSize: 22.sp),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: UiConstants.kMainColor,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCard(
                  title: "Cairo Clinic",
                  location:
                      "masr al gdida38 Abo Baker Street above United Bank",
                  firstPhoneNumber: "01006561232",
                  secondPhoneNumber: "01003256240",
                ),
                CustomCard(
                  title: "Giza Clinic",
                  location:
                      "masr al gdida38 Abo Baker Street above United Bank",
                  firstPhoneNumber: "01006561232",
                  secondPhoneNumber: "01003256240",
                ),
                CustomCard(
                  title: "Alexandria Clinic",
                  location:
                      "masr al gdida38 Abo Baker Street above United Bank",
                  firstPhoneNumber: "01006561232",
                  secondPhoneNumber: "01003256240",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
