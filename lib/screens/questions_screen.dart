import 'package:flutter/material.dart';
import 'package:profertility/screens/navigation_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  bool isSelected = true;

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
                  const SizedBox(height: 16.0),
                  const Text(
                    "Questions About\nYour Present Partner",
                    textAlign: TextAlign.center,
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
                      "Which sex is your partner?",
                      style: TextStyle(
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GenderSelectionWidget(
                          isSelected: isSelected,
                          title: "Male",
                          onClick: () {
                            setState(() {
                              isSelected = true;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 24.0),
                      Expanded(
                        child: GenderSelectionWidget(
                          isSelected: !isSelected,
                          title: "Female",
                          onClick: () {
                            setState(() {
                              isSelected = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "How old is your partner",
                      style: TextStyle(color: Color(0xff1d1d1d)),
                    ),
                  ),
                  const SizedBox(height: 12),
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
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "How much did you weight a year ago?",
                      style: TextStyle(color: Color(0xff1d1d1d)),
                    ),
                  ),
                  const SizedBox(height: 12),
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
                  const SizedBox(height: 12),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: PrimaryButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NavigationScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class GenderSelectionWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final VoidCallback onClick;
  const GenderSelectionWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: const Color(0xfff7f8fa),
          borderRadius: BorderRadius.circular(70),
        ),
        child: Row(
          children: [
            Image.asset(
              isSelected
                  ? "assets/images/male.png"
                  : "assets/images/female.png",
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Theme.of(context).primaryColor : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
