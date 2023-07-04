import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/customtextfeild.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return ColorfulSafeArea(
      color: ColorConstant.blueColor,
      child: Scaffold(
        backgroundColor: ColorConstant.blueColor,
        body: SingleChildScrollView(
          child: Column(
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
                    height: 33,
                    width: 80,
                    margin: const EdgeInsets.only(left: 21),
                    child: const Text(
                      "Log In",
                      style: TextFontConstant.text,
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
                      // color: Colors.amber,
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
                      // color: Colors.amber,
                      margin: const EdgeInsets.only(left: 21, right: 20),
                      child: const CustomTextFieldPassword(
                        hintText: 'Password',
                        labelText: "Enter Password",
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        // ignore: sort_child_properties_last
                        child: const Center(
                            child: Text(
                          "Continue",
                          textAlign: TextAlign.center,
                          style: TextFontConstant.logintextbutton,
                        )),
                        height: 50,
                        width: Get.width * .9,
                        margin: const EdgeInsets.only(left: 21, right: 20),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              ColorConstant.lightyellColor,
                              ColorConstant.darkyellColor
                            ], // Replace with your desired gradient colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        )),
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
                      style: TextStyle(color: ColorConstant.whiteColor,fontSize: 16),
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
                      margin: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            // color: Colors.pink,
                            margin: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: Image.asset("assets/images/google.png"),
                          ),
                          const SizedBox(
                            height: 24,
                            width: 200,
                            // color: Color.fromARGB(255, 173, 159, 164),
                            child: Center(
                                child: Text(
                              "Continue with Google",
                              style: TextFontConstant.logintextbutton,
                            )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
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
                      margin: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            // color: Colors.pink,
                            margin: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: Image.asset("assets/images/apple.png"),
                          ),
                          const SizedBox(
                            height: 24,
                            width: 200,
                            // color: Color.fromARGB(255, 173, 159, 164),
                            child: Center(
                                child: Text(
                              "Continue with Apple",
                              style: TextFontConstant.logintextbutton,
                            )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
