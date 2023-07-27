import 'package:flutter/material.dart';

import 'package:socialapp/utils/color_constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstant.blueColor,
      body: Center(
        child: Text("Profile page",style: TextStyle(color: ColorConstant.whiteColor),)),
    );
  }
}