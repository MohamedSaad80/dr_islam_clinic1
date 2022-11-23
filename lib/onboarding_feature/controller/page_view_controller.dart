import 'package:get/get.dart';
import '../model/page_view_model.dart';

class OnBoardingController extends GetxController {
  int currentDotsIndicatorIndex = 0;

  List<PageViewModel> pageViewData = [
    PageViewModel(
        title: "Welcome aboard!",
        subTitle:
            "Meet Dr.Islam Health App - you will find all you need for your health here."),
    PageViewModel(
        title: "Medical Records",
        subTitle:
            "Access all your Medical Records such as: Medication, Laboratories and all you Medical History"),
  ];

  void changeIndicatorIndex({required int newDotsIndicatorIndexValue}) {
    currentDotsIndicatorIndex = newDotsIndicatorIndexValue;
    update();
  }
}
