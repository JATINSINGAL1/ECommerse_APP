import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance =>  Get.find();

  // variables
  final email= TextEditingController();
  final lastName=TextEditingController();
  final userName=TextEditingController();
  final password=TextEditingController();
  final firstName=TextEditingController();
  final phoneNumber=TextEditingController();
  GlobalKey<FormState> signupFormKey=GlobalKey<FormState>();

  // Signup
  Future<void>signup() async{
    try{
      
    }
  }

}