import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/profile_setup_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  int selectedGender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(
        title: null,
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    "Please select your Gender",
                    style: TextStyle(
                      color: Color(0xff4d1a53),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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
                    children: [
                      Expanded(
                        child: SelectionWidget(
                          asset: "assets/images/mars.png",
                          isSelected: selectedGender == 0,
                          onClick: () {
                            setState(() {
                              selectedGender = 0;
                            });
                          },
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: SelectionWidget(
                          asset: "assets/images/femenine.png",
                          isSelected: selectedGender == 1,
                          onClick: () {
                            setState(() {
                              selectedGender = 1;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  PrimaryButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const ProfileSetupScreen()),
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
  final String asset;
  final VoidCallback onClick;

  const SelectionWidget({
    Key? key,
    required this.isSelected,
    required this.onClick,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffebfafb),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              asset,
              width: 120,
              height: 120,
            ),
            Image.asset(
              isSelected
                  ? "assets/images/tick.png"
                  : "assets/images/unselect.png",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
