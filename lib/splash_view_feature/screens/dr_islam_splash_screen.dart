import 'package:flutter/material.dart';

import '../../onboarding_feature/view/screens/on_boarding_screen.dart';
import '../widgets/dr_islam_splash_view_widget.dart';

class DrIslamSplashScreen extends StatelessWidget {
const DrIslamSplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  DrIslamSplashViewWidget(
      nextPage: OnBoardingScreen(),
    );
  }
}