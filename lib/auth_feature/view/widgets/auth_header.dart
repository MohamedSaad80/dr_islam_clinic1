import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/auth_logo.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
