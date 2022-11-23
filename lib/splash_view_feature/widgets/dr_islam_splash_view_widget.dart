import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '../../core/constants/ui_constants.dart';


class DrIslamSplashViewWidget extends StatelessWidget {
final Widget nextPage ;
  const DrIslamSplashViewWidget({super.key, required this.nextPage});
  @override
  Widget build(BuildContext context){
    return SplashScreenView(
      duration: 5000,
      imageSize: (MediaQuery.of(context).size.width).toInt() ,
      imageSrc: "assets/images/splash_logo.png",
      pageRouteTransition: PageRouteTransition.Normal ,
      backgroundColor: UiConstants.kMainColor,
       navigateRoute: nextPage, 
    );
  }
}