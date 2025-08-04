
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/theme/app_theme_data.dart';

import 'app.dart';
import 'core/di/service_locator.dart';
import 'core/utils/theme/app_theme.dart';
import 'features/auth/presentation/view/screens/sign_in_Screen.dart';
import 'features/base/helpers/secure_storge_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await initServiceLocator();
  runApp(
    const ProviderScope(
      child: ScreenUtilInit(designSize: Size(360, 690), child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> isLogin() async {
    final email = await SecureStorageHelper.getEmail();
    return email != null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: isLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show loading indicator
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        final loggedIn = snapshot.data ?? false;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light.themeData,
          darkTheme: AppTheme.dark.themeData,
          home: loggedIn ? const App() : SignInScreen(),
        );
      },

    );
  }
}


