import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/CA-125_test_Screen.dart';
import 'package:profertility/screens/appointment_screen.dart';
import 'package:profertility/screens/mario_screen.dart';
import 'package:profertility/screens/myappointment_screen.dart';
import 'package:profertility/screens/test_list_screen.dart';

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
      home: const CA125TestScreen(),
    );
  }
}
