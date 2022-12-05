import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/profile_setup_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/image.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/arrow-left.png"),
                    const SizedBox(height: 60),
                    const Text(
                      "Please select your Gender",
                      style: TextStyle(
                          color: Color(0xff4d1a53),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "On the basis of the your selection the further Questionnaires will be asked to you.",
                      style: TextStyle(
                        color: Color(0xff898989),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Expanded(
                          child: SelectionWidget(
                            isSelected: true,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: SelectionWidget(
                            isSelected: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    PrimaryButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const ProfileSetupScreen()
                            ),
                            ),
                            );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
    );
  }
}

class SelectionWidget extends StatelessWidget {
  final bool isSelected;

  const SelectionWidget({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffebfafb),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            isSelected 
             ? "assets/images/boy.png"
             : "assets/images/girl.png",
          ),
          Image.asset(
            isSelected
                ? "assets/images/unselect.png"
                : "assets/images/tick.png",
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
