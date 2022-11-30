import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class GeneralQuestionsScreen extends StatelessWidget {
  const GeneralQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text(
                    "General Questions",
                    style: TextStyle(fontSize: 22, 
                     fontWeight: FontWeight.bold,
                    color: Color(0xff4d1a53)),
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
                      suffixText: "Cm",
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
                      suffixText: "Kg",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "How much did you weigh a year ago?",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1d1d1d)),
                      )),
                  const SizedBox(height: 14),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter input in kg", suffixText: "Kg"),
                  ),
                  const Spacer(),
                  PrimaryButton(
                    title: "Continue",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
