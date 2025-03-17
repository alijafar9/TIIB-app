import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/OnBoarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _controller.forward();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              // child: Image.asset('assets/images/logo.png', height: 125),
              child: Image.asset(
                'assets/images/splash.gif',
                width: 260,
                height: 260,
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset('assets/images/pci.png', height: 125),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
