import 'package:flutter/rendering.dart';

class EValidator{

  static String? validateEmptyText(String? fieldName,String? value){
    if(value==null|| value.isEmpty){
      return '$fieldName is required';
    }

  return null;
  }
  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return 'Email is required';
    }

    final emailRegExp=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if(value==null || value.isEmpty){
      return 'Password is required';
    }
    if(value.length<6){
      return 'Password must be atleast 6 character long';
    }
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain atleast on uppercase letter';
    }
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain atleast one number';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain atleast one special character';
    }

    return null;
  }

  static String? validPhoneNO(String? value){
    if(value==null || value.isEmpty){
      return '';

    }
  }
}