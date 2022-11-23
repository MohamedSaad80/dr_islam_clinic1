import 'package:flutter/material.dart';
import '../../../main_view_feature/views/widgets/custom_app_bar.dart';

class FollowUpScreen extends StatelessWidget {
const FollowUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/app_background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          
        ],
      ),
    );
  }
}