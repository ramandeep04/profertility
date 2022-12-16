import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:profertility/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).textScaleFactor.toString());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/profertility.png",
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Center(
              child: Image.asset("assets/images/splash.png"),
            ),
          )
        ],
      ),
    );
  }
}
