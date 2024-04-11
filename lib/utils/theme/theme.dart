import 'package:ecommerse/utils/theme/customTheme/appbar_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/bottom_sheet_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/checkbox_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/chip_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/elevated_themedata.dart';
import 'package:ecommerse/utils/theme/customTheme/outlined_button_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/text_field_theme.dart';
import 'package:ecommerse/utils/theme/customTheme/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme{
  EAppTheme._(); 
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: EtextTheme.lightTextTheme,
    elevatedButtonTheme: EelevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
    checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,
    chipTheme: EChipTheme.lightChipTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
  );
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: EtextTheme.darkTextTheme,
    elevatedButtonTheme: EelevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme,
    checkboxTheme: ECheckBoxTheme.darkCheckBoxTheme,
    chipTheme: EChipTheme.darkChipTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
  );


}
