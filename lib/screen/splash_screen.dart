import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/controller/splash_controller.dart';
import 'package:socialapp/utils/color_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: ColorConstant.blueColor,
      child: Scaffold(
          backgroundColor: ColorConstant.blueColor,
          body: GetBuilder<SplashController>(
            init: SplashController(),
            builder: (controller) {
              return Center(
                child: SizedBox(
                  height: 287,
                  width: 287,
                  child: Image.asset('assets/images/logo.png'),
                ),
              );
            },
          )
          ),
    );
  }
}
