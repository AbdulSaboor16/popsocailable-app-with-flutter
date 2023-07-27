import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialapp/menupage/menu_page.dart';
import 'package:socialapp/profilepage/profile_page.dart';
import 'package:socialapp/screen/splash_screen.dart';
import 'package:socialapp/story_view.dart';

import 'bottomtabbarfolder/box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
