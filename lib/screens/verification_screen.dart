import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/select_gender.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 100,
            child: Image.asset("assets/images/backgroundimage.png",
                fit: BoxFit.fill),
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
                    Image.asset('assets/images/arrow-left.png'),
                    const SizedBox(height: 120),
                    const Text(
                      "Verification",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff4d1a53),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "We have just sent you a verification code via 2233 3843 009",
                      style: TextStyle(color: Color(0xff898989)),
                    ),
                    const SizedBox(height: 120),
                    PrimaryButton(
                        title: "Continue",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => const SelectGender()),
                            ),
                          );
                        }),
                    const SizedBox(height: 22),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: "The verify code will expire in",
                            style: GoogleFonts.comfortaa().copyWith(
                              color: const Color(0xff1d1d1d),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: " 00:59",
                                  style: GoogleFonts.comfortaa().copyWith(
                                    color: const Color(0xffd52057),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {})
                            ]),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Resend Code",
                            style: TextStyle(
                              color: Color(0xff4d1a53),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )
                  ],
                )),
              ))
        ],
      ),
    );
  }
}
