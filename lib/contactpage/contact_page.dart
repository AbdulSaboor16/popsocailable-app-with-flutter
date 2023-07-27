import 'package:flutter/material.dart';
import 'package:socialapp/utils/color_constant.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstant.blueColor,
      body: Center(
        child: Text("contact page",style: TextStyle(color: ColorConstant.whiteColor),)),
    );
  }
}