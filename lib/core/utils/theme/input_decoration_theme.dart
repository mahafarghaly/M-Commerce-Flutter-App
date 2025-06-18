
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/theme/app_color_scheme.dart';
import 'package:store_app/core/utils/theme/text_theme.dart';

import 'app_theme.dart';

extension AppInputDecorationThemeData on AppTheme {
  InputDecorationTheme get inputDecorationThemeData {
    return InputDecorationTheme(
      labelStyle: textThemeData.bodyLarge?.copyWith(
        color: colorScheme.onSurface,
      ),
      floatingLabelStyle: textThemeData.bodySmall?.copyWith(
        color: colorScheme.primary,
      ),
        border: InputBorder.none,
      hintStyle: textThemeData.bodySmall?.copyWith(
        color: colorScheme.onPrimaryContainer.withOpacity(0.4),


      )

    );
  }
}
