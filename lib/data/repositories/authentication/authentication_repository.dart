

import 'package:ecommerse/features/authenticaton/screens/login.dart';
import 'package:ecommerse/features/authenticaton/screens/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance=>Get.find();

  // variables
  final deviceStorage = GetStorage();
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }
  screenRedirect()async{
    // local storage
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(()=>const LoginPage()):Get.offAll(()=>const OnBoardingScreen());
  }
}