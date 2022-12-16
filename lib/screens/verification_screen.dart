import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/backgroundimage.png",
              fit: BoxFit.contain,
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
                    const SizedBox(height: 120),
                    const Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff4d1a53),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "We have just sent you a verification code via 2233 3843 009",
                      style: TextStyle(color: Color(0xff898989)),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: PinCodeTextField(
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        pinTheme: PinTheme(
                          activeColor: Theme.of(context).primaryColor,
                          selectedColor: Theme.of(context).primaryColor,
                          selectedFillColor: const Color.fromARGB(255, 238, 238, 238),
                          inactiveFillColor: const Color.fromARGB(255, 238, 238, 238),
                          inactiveColor: const Color.fromARGB(255, 241, 241, 241),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12.0),
                          fieldHeight: 56,
                          fieldWidth: 50,
                          activeFillColor: Colors.white,
                        ),
                        cursorColor: Theme.of(context).primaryColor,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        backgroundColor: Colors.white,
                        onCompleted: (v) {},
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                      ),
                    ),
                    const SizedBox(height: 16),
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
                          ],
                        ),
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).viewPadding.top,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              icon: Image.asset("assets/images/arrow-left.png"),
            ),
          ),
        ],
      ),
    );
  }
}
