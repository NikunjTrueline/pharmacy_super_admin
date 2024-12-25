import 'dart:async';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../gen/assets.gen.dart';
import '../../prefrence/prefrence_servicies.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (PreferenceServices.getBoolData(key: 'isLogin')) {
        welcome();
        Navigator.pushReplacementNamed(context, AppConstant.homeView);
      } else {
        Navigator.of(context).pushReplacementNamed(AppConstant.loginView);
      }
    });
  }

  void welcome() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Wel-come to Super Admin Panel!'),
        backgroundColor: Color(0Xff21618C),
        shape: OutlineInputBorder(),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3), // Adjust the duration as needed
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Center(
        child: Assets.images.appLogo.image(),
      ),
    );
  }
}
