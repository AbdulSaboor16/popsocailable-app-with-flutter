// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:socialapp/utils/color_constant.dart';
// import 'package:socialapp/utils/textfont_constant.dart';
// import '../controller/box_controller.dart';

// class BoxPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final BoxController controller = Get.put(BoxController()); // Add this line
//     return Scaffold(
//       body: Obx(() => BoxController.widgetOptions.elementAt(
//           controller.selectedIndex.value)), // Add ".value" to selectedIndex
//       bottomNavigationBar: Theme(
//         data: Theme.of(context).copyWith(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//         ),
//         child: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Container(
//                       margin: EdgeInsets.only(top: 15, right: 10),
//                       child: const ImageIcon(
//                         AssetImage(
//                           'assets/images/sv.png',
//                         ),
//                         color: ColorConstant.whiteColor,
//                       )),
//                   Container(
//                     margin: EdgeInsets.only(right: 10),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: RichText(
//                           text: TextSpan(
//                         text: "Scan",
//                         style: GoogleFonts.poppins(
//                             textStyle: TextFontConstant.timelinetext),
//                       )),
//                     ),
//                   ),
//                 ],
//               ),
//               label: '',
//               backgroundColor: ColorConstant.blueColor,
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(right: 30),
//                     child: const Icon(
//                       Icons.contact_emergency_outlined,
//                       color: ColorConstant.whiteColor,
//                       size: 30,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(right: 25),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: FittedBox(
//                           child: RichText(
//                               text: TextSpan(
//                         text: "Contact",
//                         style: GoogleFonts.poppins(
//                             textStyle: TextFontConstant.timelinetext),
//                       ))),
//                     ),
//                   ),
//                 ],
//               ),
//               label: '',
//               backgroundColor: ColorConstant.blueColor,
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Container(
//                     height: 40,
//                     width: 40,
//                     margin: EdgeInsets.only(right: 20),
//                     decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(50),
//                         gradient: const LinearGradient(
//                           colors: [
//                             ColorConstant.lightyellColor,
//                             ColorConstant.darkyellColor,
//                           ],
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                         )),
//                     child: const ImageIcon(
//                       AssetImage("assets/images/hmes.png"),
//                     ),
//                   ),
//                   Container(
//                       margin: EdgeInsets.only(right: 20),
//                       child: RichText(
//                           text: TextSpan(
//                         text: "Hub",
//                         style: GoogleFonts.poppins(
//                             textStyle: TextFontConstant.timelinetext),
//                       ))),
//                 ],
//               ),
//               label: '',
//               backgroundColor: ColorConstant.blueColor,
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   const Icon(
//                     Icons.person_outline,
//                     color: ColorConstant.whiteColor,
//                     size: 30,
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Profile",
//                       style: GoogleFonts.poppins(
//                           textStyle: TextFontConstant.timelinetext),
//                     ),
//                   ),
//                 ],
//               ),
//               label: '',
//               backgroundColor: ColorConstant.blueColor,
//             ),
//             BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   const Icon(
//                     Icons.menu,
//                     color: ColorConstant.whiteColor,
//                     size: 30,
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Menu",
//                       style: GoogleFonts.poppins(
//                           textStyle: TextFontConstant.timelinetext),
//                     ),
//                   ),
//                 ],
//               ),
//               label: '',
//               backgroundColor: ColorConstant.blueColor,
//             ),
//           ],
//           currentIndex: controller.selectedIndex.value,
//           selectedItemColor: Colors.white,
//           onTap: controller.changeIndex,
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialapp/contactpage/contact_page.dart';
import 'package:socialapp/home_page.dart';
import 'package:socialapp/menupage/menu_page.dart';
import 'package:socialapp/profilepage/profile_page.dart';
import 'package:socialapp/scannerpage/scanner_page.dart';
import 'package:socialapp/utils/color_constant.dart';
import 'package:socialapp/utils/textfont_constant.dart';

class BottomsNavigation extends StatelessWidget {
  const BottomsNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 90,
        backgroundColor: ColorConstant.blueColor,
        activeColor: ColorConstant.whiteColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                    margin:const EdgeInsets.only(
                      top: 15,
                    ),
                    child: const ImageIcon(
                      AssetImage(
                        'assets/images/sv.png',
                      ),
                      color: ColorConstant.whiteColor,
                    )),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                    text: "Scan",
                    style: GoogleFonts.poppins(
                        textStyle: TextFontConstant.timelinetext),
                  )),
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
                    margin:const EdgeInsets.only(
                      top: 15,
                    ),
                    child: const Icon(
                      Icons.contact_emergency_outlined,
                      color: ColorConstant.whiteColor,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                        text: TextSpan(
                      text: "Contacts",
                      style: GoogleFonts.poppins(
                          textStyle: TextFontConstant.timelinetext),
                    )),
                  ),
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  margin:const EdgeInsets.only(top: 15),
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
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Hub",
                        style: GoogleFonts.poppins(
                            textStyle: TextFontConstant.timelinetext),
                      )),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                  margin:const EdgeInsets.only(top: 15),
                  child: const Icon(
                    Icons.person_outline,
                    color: ColorConstant.whiteColor,
                    size: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                        textStyle: TextFontConstant.timelinetext),
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                  margin:const EdgeInsets.only(top: 16),
                  child: const Icon(
                    Icons.menu,
                    color: ColorConstant.whiteColor,
                    size: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Menu",
                    style: GoogleFonts.poppins(
                        textStyle: TextFontConstant.timelinetext),
                  ),
                ),
              ],
            ),
            label: "",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ScannerPage());
              },
            );

          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ContactPage());
              },
            );

          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: StoryApp());
              },
            );

          case 3:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ProfilePage());
              },
            );
             case 4:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: MenuPage());
              },
            );
        }
        return Container();
      },
    );
  }
}