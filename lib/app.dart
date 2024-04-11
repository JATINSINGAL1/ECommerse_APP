import 'package:ecommerse/features/authenticaton/screens/onboarding.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerse/utils/theme/theme.dart';
import 'package:get/get.dart';


// use this MyApp class to set theme initial bindings animations 
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lighttheme, // this is for light theme
      darkTheme: EAppTheme.darktheme, // this is for dark one 
      // show loader or cicular progress indicator meanwhile Auth Repo is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: EColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white,)),
      )
      
      
      
    );
  }
}