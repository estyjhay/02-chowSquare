
import 'package:chow_square/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigatetologin();
  }

  navigatetologin() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context as BuildContext,
      MaterialPageRoute(
        builder: (context) => (LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Image.asset(
          'assests/splash.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
