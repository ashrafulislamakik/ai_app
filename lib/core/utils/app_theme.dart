import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme {

  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.background,

    useMaterial3: true,

    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.background,
    ),

    cardColor: AppColors.card,
  );
}