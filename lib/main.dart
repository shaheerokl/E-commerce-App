import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/main_screen.dart';
import 'package:newproject/shop_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,
    ),
    home:MainScreen(

    ),
    );
    });
  }
}


