import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/drmario_screen.dart';
import 'package:profertility/screens/myappointment_screen.dart';
import 'package:profertility/screens/onboarding_screen.dart';
import 'package:profertility/screens/popular_products_screen.dart';
import 'package:profertility/screens/product_details_screen.dart';
import 'package:profertility/screens/profile_setup_screen.dart';
import 'package:profertility/screens/promocodes_screen.dart';
import 'package:profertility/screens/schedule_screen.dart';
import 'package:profertility/screens/signup_screen.dart';
import 'package:profertility/screens/splash_screen.dart';
import 'package:profertility/screens/test_detail_screen.dart';
import 'package:profertility/screens/test_list_screen.dart';
import 'package:profertility/screens/test_sort_screen.dart';
import 'package:profertility/screens/welcome_profertility_screen.dart';

import 'screens/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profertility',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: ThemeColor.mcgpalette,
        primaryColor: const Color(ThemeColor.primaryColor),
        textTheme: GoogleFonts.comfortaaTextTheme(),
        tabBarTheme: TabBarTheme(
          labelStyle: GoogleFonts.comfortaa(),
          unselectedLabelStyle: GoogleFonts.comfortaa(),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xfff7f8fa),
          contentPadding: const EdgeInsets.all(24),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70),
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xFF00AFA4),
            ),
          ),
        ),
      ),
      home: const TestSortScreen(),
    );
  }
}
