import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

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
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Text("   Questions About \n Your Present Partner",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4d1a53))),
                const SizedBox(height: 60),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Which sex is your partner?",
                      style: TextStyle(fontSize: 20, color: Color(0xff1d1d1d))),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                        child: GenderSelectionWidget(
                            isSelected: true, title: "Male")),
                    SizedBox(width: 24.0),
                    Expanded(
                        child: GenderSelectionWidget(
                            isSelected: false, title: "Female")),
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("How old is your partner",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff1d1d1d)))),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter input in kg", suffixText: "Kg"),
                ),
                const SizedBox(height: 12),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("How much did you weigh a year ago?",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff1d1d1d)))),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter input in kg", suffixText: "Kg"),
                ),
                const SizedBox(height: 12),
                const Spacer(),
                PrimaryButton(title: "Continue", onPressed: (() {})),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class GenderSelectionWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  const GenderSelectionWidget({
    Key? key,
    required this.isSelected,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Color(0xfff7f8fa),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              isSelected
                  ? "assets/images/male.png"
                  : "assets/images/female.png",
            ),
            const SizedBox(width: 16),
            Text(title),
          ],
        ),
      ),
    );
  }
}
