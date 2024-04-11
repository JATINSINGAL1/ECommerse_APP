// learn about this file in detail latter
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EDeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color)async{
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color),);
  }

  static bool isLandScapeOrientation(BuildContext context){
    final viewInsets=View.of(context).viewInsets;
    return viewInsets.bottom==0;
  }

  static bool isPotraitOrientation(BuildContext context){
    final viewInsets=View.of(context).viewInsets;
    return viewInsets.bottom!=0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky:SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }
  
  static double getKeyboardHeight(){
    final viewInsets=MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  static Future<bool> isKeyboardVisible()async{
    final viewInsets=View.of(Get.context!).viewInsets;
    return viewInsets.bottom>0;
  }

  static Future<bool> isPhysicalDevice()async{
    return defaultTargetPlatform==TargetPlatform.android||defaultTargetPlatform==TargetPlatform.iOS;
  }

  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration,()=> HapticFeedback.vibrate());
  }
  // continues i am tired 







  // static bool isIOS(){
  //   return Plateform.isIOS;
  // }

  static void launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw 'could not launch $url';
    }
  }
}