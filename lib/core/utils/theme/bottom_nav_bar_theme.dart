import 'package:flutter/material.dart';
import 'package:store_app/core/utils/theme/app_color_scheme.dart';


import 'app_theme.dart';

extension AppBottomNavBarTheme on AppTheme{
  BottomNavigationBarThemeData get bottomNavBarTheme{
    return BottomNavigationBarThemeData(
      backgroundColor:  const Color(0xFFFFFFFF),

      selectedIconTheme:IconThemeData(
          color: colorScheme.primary
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.shifting,
      unselectedIconTheme: IconThemeData(
          color: colorScheme.primary.withOpacity(0.1)
      )
    );
  }
}