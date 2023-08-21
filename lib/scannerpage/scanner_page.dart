import 'dart:ui';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:socialapp/bottomtabbarfolder/box.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
        color: ColorConstant.blueColor,
        child: Scaffold(
          backgroundColor: ColorConstant.blueColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {
                  Get.offAll(() => const BottomsNavigation());
                },
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: ColorConstant.blackColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(Icons.arrow_back),
                )),
          ),
          body: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 46,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: Get.height * .7,
                          width: 350,
                        ),
                        Positioned(
                          top: 50,
                          left: 33,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                height: 315,
                                width: 280,
                                foregroundDecoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(22)),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 122,
                          child: Container(
                            height: 100,
                            width: 100,
                            foregroundDecoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/recta.png"),
                                  fit: BoxFit.cover),
                              color: const Color.fromARGB(255, 143, 111, 122),
                              borderRadius: BorderRadius.circular(50),
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
                        Positioned(
                          top: 112,
                          // bottom: 270,
                          left: 80,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 181,
                              width: 181,
                              child: Image.asset('assets/images/scan.png'),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          top: 300,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              height: 40,
                              width: 155,
                              child: Center(
                                child: Text(
                                  'Kate Williams',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextFontConstant.textss),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 130,
                          left: 115,
                          child: SizedBox(
                              height: 40,
                              width: 133,
                              child: Center(
                                child: Text(
                                  "Scanning...",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextFontConstant.scantext),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
