import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class GoogleLoginButton extends StatefulWidget {
  const GoogleLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  _GoogleLoginButtonState createState() => _GoogleLoginButtonState();
}

class _GoogleLoginButtonState extends State<GoogleLoginButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 44,
        width: Get.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: ColorConstant.whiteColor),
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
            SizedBox(
              height: 24,
              width: 200,
              // color: Color.fromARGB(255, 173, 159, 164),
              child: Center(
                  child: Text("Continue with Google",
                      style: GoogleFonts.poppins(
                          textStyle: TextFontConstant.logintextbutton))),
            )
          ],
        ),
      ),
    );
  }
}
