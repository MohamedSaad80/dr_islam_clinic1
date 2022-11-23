import 'dart:io';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dr_islam_clinic/core/widgets/custom_button.dart';
import 'package:flimer/flimer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share_whatsapp/share_whatsapp.dart';
import '../../../core/constants/ui_constants.dart';
import '../../../core/widgets/horizontal_spacer.dart';

class MakeLapRequest extends StatefulWidget {
  const MakeLapRequest({Key? key}) : super(key: key);

  @override
  State<MakeLapRequest> createState() => _MakeLapRequestState();
}

class _MakeLapRequestState extends State<MakeLapRequest> {
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/lab.png"),
            HorizontalSpacer(10),
            Text(
              "Cairo Lab",
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
          ConditionalBuilder(
            condition: file != null,
            builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(
                                File(file!.path),
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomButton(
                      buttonHeight: 50,
                      buttonName: "Share To Whats App",
                      onTap: () async{
                        ShareWhatsapp shareWhatsapp = ShareWhatsapp();
                       await shareWhatsapp.share(file:file!, phone: "+201029911328");
                      },
                    ),
                  ),
                ],
              );
            },
            fallback: (context) => Container(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              color: UiConstants.kMainColor,
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: UiConstants.kSecondColor,
                      child: Icon(Iconsax.gallery),
                    ),
                    title: Text(
                      "From Gallery",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: UiConstants.kSecondColor),
                    ),
                    iconColor: Colors.black,
                    onTap: () async {
                      file = await flimer.pickImage();
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: UiConstants.kSecondColor,
                      child: Icon(Iconsax.camera),
                    ),
                    title: Text(
                      "From Camera",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: UiConstants.kSecondColor,
                      ),
                    ),
                    iconColor: Colors.black,
                    onTap: () async {
                      file = await flimer.pickImage(source: ImageSource.camera);
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          );
        },
        backgroundColor: UiConstants.kMainColor,
        child: const Icon(Iconsax.add),
      ),
    );
  }
}
