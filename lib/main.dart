// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
//
// import 'auth_page/login_page/login_page.dart';
// import 'auth_page/signup_page/signin_page.dart';
//
// void main() {
//   WidgetsBinding widgetsBinding= WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget  {
//   const MyApp({super.key});
//
//
//   @override
//   void initState() {
//     // Future.delayed(Duration(seconds: 10), () {
//     //   Get.toNamed('/Login');
//     // });
//     super.initState();
//   }
//
//   void initialization() async {
//     print('pausing ... ');
//     await Future.delayed(const Duration(seconds: 10));
//     print('unpausing');
//     FlutterNativeSplash.remove();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(), // Add a theme for better styling
//       initialRoute: '/login',
//       getPages: [
//         GetPage(name: '/login', page: () => LoginPage()),
//         // GetPage(name: '/SplashScreen', page: () => SplashScreen()),
//         GetPage(name: '/SigninPage', page: () => SigninPage()),
//
//       ],
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new102/splash/onboarding.dart';
import 'package:new102/splash/splashscreen.dart';

import 'auth_page/login_page/login_page.dart';
import 'auth_page/signup_page/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),

      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/SigninPage', page: () => SigninPage()),
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/OnBoarding', page: () => OnBoarding()),
      ],
    );
  }
}
