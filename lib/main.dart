import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/home_screen.dart';
import 'package:profertility/screens/splash_screen.dart';
import 'screens/theme/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profertility',
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQueryData.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
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
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
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
      home: const SplashScreen(),
    );
  }
}
