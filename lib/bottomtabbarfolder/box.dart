import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/utils/color_constant.dart';
import '../controller/box_controller.dart';

class BoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BoxController controller = Get.put(BoxController()); // Add this line
    return Scaffold(
      body: Obx(() => BoxController.widgetOptions.elementAt(
          controller.selectedIndex.value)), // Add ".value" to selectedIndex
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: Colors.transparent),
          mouseCursor: SystemMouseCursors.none,
          enableFeedback: false,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 15, right: 10),
                      child: const ImageIcon(
                        AssetImage(
                          'assets/images/sv.png',
                        ),
                        color: ColorConstant.whiteColor,
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                          text: const TextSpan(
                              text: "Scan",
                              style:
                                  TextStyle(color: ColorConstant.whiteColor))),
                    ),
                  ),
                ],
              ),
              label: '',
              backgroundColor: ColorConstant.blueColor,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Icon(
                      Icons.contact_emergency_outlined,
                      color: ColorConstant.whiteColor,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(text: TextSpan(text: "Contact")),
                    ),
                  ),
                ],
              ),
              label: '',
              backgroundColor: ColorConstant.blueColor,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            ColorConstant.lightyellColor,
                            ColorConstant.darkyellColor,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: const ImageIcon(
                      AssetImage("assets/images/hmes.png"),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: RichText(
                          text: const TextSpan(
                              text: "Hub",
                              style:
                                  TextStyle(color: ColorConstant.whiteColor)))),
                ],
              ),
              label: '',
              backgroundColor: ColorConstant.blueColor,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(
                    Icons.person_outline,
                    color: ColorConstant.whiteColor,
                    size: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Profile",
                      style: TextStyle(color: ColorConstant.whiteColor),
                    ),
                  ),
                ],
              ),
              label: '',
              backgroundColor: ColorConstant.blueColor,
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(
                    Icons.menu,
                    color: ColorConstant.whiteColor,
                    size: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Menu",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              label: '',
              backgroundColor: ColorConstant.blueColor,
            ),
            // BottomNavigationBarItem(
            //   icon: Container(
            //     margin: EdgeInsets.only(right: 20),
            //     child: Icon(
            //       Icons.shopping_cart_outlined,
            //       color: Colors.green,
            //     ),
            //   ),
            //   label: 'CartView',
            //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
            // ),
          ],
          currentIndex:
              controller.selectedIndex.value, // Add ".value" to selectedIndex
          selectedItemColor: Colors.white,
          onTap: controller.changeIndex,
        ),
      ),
    );
  }
}