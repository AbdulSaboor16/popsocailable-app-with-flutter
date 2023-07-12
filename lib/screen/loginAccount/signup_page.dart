import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialapp/controller/splash_controller.dart';
import 'package:socialapp/home_page.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/customtextfeild.dart';
import 'package:socialapp/utils/apple_login_button.dart';
import 'package:socialapp/utils/google_login_button.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CheckboxController());
    return ColorfulSafeArea(
      color: ColorConstant.blueColor,
      child: Scaffold(
        backgroundColor: ColorConstant.blueColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 84,
                  ),
                  Container(
                    height: 41,
                    width: 50,
                    margin: const EdgeInsets.only(left: 24),
                    child: Image.asset("assets/images/logone.png"),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 29,
                  ),
                  Container(
                    height: 38,
                    width: 100,
                    margin: const EdgeInsets.only(left: 21),
                    child: Text(
                      "Sign Up",
                      style:
                          GoogleFonts.poppins(textStyle: TextFontConstant.text),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: Get.width * .9,
                      margin: const EdgeInsets.only(left: 21, right: 20),
                      child: const CustomTextFieldEmail(
                        hintText: 'Email',
                        labelText: "Enter Email",
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: const EdgeInsets.only(left: 21, right: 20),
                    child: const CustomTextFieldPassword(
                        hintText: 'Password', labelText: "Enter Password"),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: const EdgeInsets.only(left: 21, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            ColorConstant.lightyellColor,
                            ColorConstant.darkyellColor,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: Center(
                      child: Text("Continue",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: TextFontConstant.logintextbutton)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 1,
                    width: Get.width * .4,
                    color: ColorConstant.whiteColor,
                    margin: const EdgeInsets.only(
                      left: 21,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: 15,
                    child: Center(
                        child: Text(
                      'or',
                      style: TextStyle(
                          color: ColorConstant.whiteColor, fontSize: 16),
                    )),
                  ),
                  Container(
                    height: 1,
                    width: Get.width * .4,
                    color: ColorConstant.whiteColor,
                    margin: const EdgeInsets.only(right: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [GoogleLoginButton()],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: const [AppleLoginButton()],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: const EdgeInsets.only(left: 21, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: Get.width * .1,
                              child: Obx(
                                () => Checkbox(
                                  side: const BorderSide(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  checkColor: ColorConstant.whiteColor,
                                  activeColor: ColorConstant.greyColor,
                                  value: controller.isChecked.value,
                                  onChanged: (value) =>
                                      controller.isChecked.toggle(),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: Get.width * .7,
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  'Yes, I understand and agree to the Terms of Service and Privacy Policy .',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: ColorConstant.whiteColor),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      height: 35,
                      width: Get.width * .9,
                      margin: const EdgeInsets.only(left: 21.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: Get.width * .2,
                            color: ColorConstant.whiteColor,
                          ),
                          SizedBox(
                            height: 35,
                            width: Get.width * .4,
                            child: Center(
                                child: FittedBox(
                              child: Text("Already have an account?",
                                  style: GoogleFonts.poppins(
                                      textStyle:
                                          TextFontConstant.logintextbutton)),
                            )),
                          ),
                          Container(
                            height: 1,
                            width: Get.width * .2,
                            color: ColorConstant.whiteColor,
                          )
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 44,
                      width: Get.width * .9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: ColorConstant.whiteColor),
                      ),
                      margin: const EdgeInsets.only(left: 21.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const StoryApp());
                            },
                            child: SizedBox(
                              height: 24,
                              width: 160,
                              child: Center(
                                  child: Text(
                                "Log In",
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        TextFontConstant.logintextbutton),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
             const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
