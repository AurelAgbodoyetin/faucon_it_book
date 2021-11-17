import 'package:faucon_it_book/app_color.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: AppColors.kBackgroundColor,
  primaryColor: AppColors.kPrimaryColor,
  colorScheme: const ColorScheme.light().copyWith(
    secondary: AppColors.kSecondaryColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(
      color: AppColors.kPrimaryColor,
    ),
    unselectedIconTheme: IconThemeData(
      color: AppColors.kTertiaryColor,
    ),
    selectedLabelStyle: TextStyle(
      color: AppColors.kPrimaryColor,
    ),
    unselectedLabelStyle: TextStyle(
      color: AppColors.kTertiaryColor,
    ),
  ),
);
