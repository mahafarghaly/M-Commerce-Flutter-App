import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/di/service_locator.dart';
import 'package:store_app/core/utils/theme/app_theme_data.dart';
import 'package:store_app/features/auth/presentation/view/screens/sign_in_Screen.dart';
import 'app.dart';
import 'core/utils/theme/app_theme.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light.themeData,
      darkTheme: AppTheme.dark.themeData,
      home:  SignInScreen(),
    );
  }
}
