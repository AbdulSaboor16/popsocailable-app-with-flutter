import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/contactpage/contact_page.dart';
import 'package:socialapp/home_page.dart';
import 'package:socialapp/menupage/menu_page.dart';
import 'package:socialapp/profilepage/profile_page.dart';
import 'package:socialapp/scannerpage/scanner_page.dart';

class BoxController extends GetxController {
  var selectedIndex = 0.obs;
  static const List<Widget> widgetOptions = <Widget>[
    
    ScannerPage(),
    ContactPage(),
    StoryApp(),
    ProfilePage(),
    MenuPage(),
    // StoryApp(),
    // StoryApp(),
    // StoryApp(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
