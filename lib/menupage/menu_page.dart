import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: ColorConstant.blueColor,
        child: Scaffold(
            backgroundColor: ColorConstant.blueColor,
            body: SingleChildScrollView(
                child: Center(
              child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: Get.width,
                        height: Get.height,
                      ),
                      //Container
                      Container(
                        height: 160,
                        width: Get.width,
                        foregroundDecoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/banner.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        child: Container(
                          width: Get.width,
                          height: Get.height,
                          color: ColorConstant.blueColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 90,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 150,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Kate Williams",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextFontConstant.scantext),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 220,
                                child: Text("Product Designer@Hammi Sys",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            TextFontConstant.logintextbutton)),
                              ),
                              SizedBox(
                                height: 40,
                                width: 240,
                                child: Text(
                                    "I design experiences mostly. I also sometimes travel.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            TextFontConstant.logintextbutton)),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Wallet",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextFontConstant.menutext)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Analytics",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextFontConstant.menutext)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Upgrade to premium",
                                    style: GoogleFonts.poppins(
                                        foreground: Paint()
                                          ..shader = const LinearGradient(
                                              colors: <Color>[
                                                ColorConstant.lightyellColor,
                                                ColorConstant.darkyellColor
                                              ]).createShader(
                                              const Rect.fromLTWH(
                                                  0.0, 0.0, 200.0, 100.0)),
                                        textStyle: TextFontConstant.menutext)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Events",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextFontConstant.menutext,
                                    )),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Forms",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextFontConstant.menutext)),
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              Container(
                                height: 30,
                                width: Get.width,
                                margin: const EdgeInsets.only(left: 30),
                                child: Text("Sign Out",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextFontConstant.menutext,
                                        color: ColorConstant.redColor)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 85,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 140,
                            width: 140,
                            foregroundDecoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/recta.png"),
                                  fit: BoxFit.cover),
                              // color: const Color.fromARGB(255, 143, 111, 122),
                              borderRadius: BorderRadius.circular(80),
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(colors: [
                                  ColorConstant.lightyellColor,
                                  ColorConstant.darkyellColor,
                                ]),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
