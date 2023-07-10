import 'dart:async';
import 'package:get/get.dart';
import '../screen/LoginAccount/login_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(
        const Duration(seconds: 2), () => Get.offAll(() => const LoginPage()));
  }
}


class CheckboxController extends GetxController {
  var isChecked = false.obs;
}