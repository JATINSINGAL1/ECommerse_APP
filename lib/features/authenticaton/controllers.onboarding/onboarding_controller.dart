import 'package:ecommerse/features/authenticaton/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  // varialbes
  final pageController=PageController();
  Rx<int> currentPageIndex= 0.obs;// obs is another widget named observer that changes design without using statefullwidget


  /// update current index when page scrollv
  void updatePageIndicator(index){
    currentPageIndex.value=index;
  }
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpToPage(index);
  }
  void nextPage(){
    if(currentPageIndex.value==2){
      final storage=GetStorage();
      storage.write('isFirstTime', false);
      Get.offAll(const LoginPage());
    }
    else
    {pageController.jumpToPage(currentPageIndex.value+1);}
  }
  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}