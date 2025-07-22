import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/utils/theme/app_theme_data.dart';
import 'package:store_app/features/home/presentation/view/screens/home_screen.dart';

import 'core/utils/theme/app_theme.dart';
import 'features/categories/presentation/view/screens/categories_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

int _currentIndex = 0;
List<Widget> screens = [
 const HomeScreen(),
  const CategoriesScreen(),
  Container(color: Colors.blue),
];

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.primary.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
