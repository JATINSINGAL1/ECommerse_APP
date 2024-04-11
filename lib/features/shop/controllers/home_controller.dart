import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance =>Get.find();

  final carousalPageIndex=0.obs;
  
  void updatePageIndicator(index){
    carousalPageIndex.value=index;
  }
}