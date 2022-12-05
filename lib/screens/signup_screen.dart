import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/verification_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 100,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12.0),
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1d1d1d)),
                    ),
                    const SizedBox(height: 120),
                    const Text(
                      "Welcome User",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff4d1a53),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Please enter your Phone number to continue",
                      style: TextStyle(color: Color(0xff898989)),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "91      93230 02660",
                        prefixIcon: Image.asset("assets/images/Polygon.png"),
                      ),
                    ),
                    const SizedBox(height: 26),
                    PrimaryButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.topCenter,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Continue with Email",
                            style: TextStyle(color: Color(0xff1d1d1d)),
                          )),
                    ),
                    const Spacer(),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: GoogleFonts.comfortaa()
                                .copyWith(color: const Color(0xff666666)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Sign In",
                                style: GoogleFonts.comfortaa().copyWith(
                                    color: const Color(0xff111111),
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
