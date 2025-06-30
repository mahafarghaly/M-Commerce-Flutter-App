
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
import 'core/di/service_locator.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String currentFlavor = String.fromEnvironment('FLAVOR');
    print("currentFlavor:: $currentFlavor");
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: false,child: App());

  }
}

