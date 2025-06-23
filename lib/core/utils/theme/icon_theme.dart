import 'package:flutter/cupertino.dart';
import 'package:store_app/core/utils/theme/app_color_scheme.dart';

import 'app_theme.dart';

extension AppBottomNavBarTheme on AppTheme{
  IconThemeData get iconThemeData{
    return IconThemeData(
 color:  colorScheme.secondary
    );
  }
}