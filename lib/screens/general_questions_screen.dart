import 'package:flutter/material.dart';
import 'package:profertility/screens/questions_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class GeneralQuestionsScreen extends StatelessWidget {
  const GeneralQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            width: 200,
            height: 200,
            child: Image.asset(
              "assets/images/image.png",
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 12.0),
                    const Text(
                      "General Questions",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4d1a53),
                      ),
                    ),
                    const SizedBox(height: 60),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "How tall are you?",
                        style: TextStyle(color: Color(0xff1d1d1d)),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter input in cm",
                        suffixIcon: Text(
                          "Cm",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff4d1a53),
                          ),
                        ),
                        isDense: true,
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 45,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "How much do you weigh today?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter input in kg",
                        suffixIcon: Text(
                          "Kg",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff4d1a53),
                          ),
                        ),
                        isDense: true,
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 45,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "How much did you weight a year ago?",
                        style: TextStyle(
                          color: Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter input in kg",
                        suffixIcon: Text(
                          "Kg",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff4d1a53),
                          ),
                        ),
                        isDense: true,
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 0,
                          minWidth: 45,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: PrimaryButton(
                        title: "Continue",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const QuestionsScreen(),
                            ),
                          );
                        },
                      ),
                    )
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
