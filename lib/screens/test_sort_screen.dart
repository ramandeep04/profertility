import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class TestSortScreen extends StatefulWidget {
  const TestSortScreen({super.key});

  @override
  State<TestSortScreen> createState() => _TestSortScreenState();
}

class _TestSortScreenState extends State<TestSortScreen> {
  int selectedDateIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Filters",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff1d1d1d)),
                      ),
                      const Text(
                        "Sort",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff1d1d1d)),
                      ),
                      Text(
                        "Reset",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  const Gap(24),
                  const Divider(
                    color: Color(0xffe8e8e8),
                    thickness: 2,
                  ),
                  const Gap(24),
                  TestSortWidget(
                    text: "All Tests",
                    isSelected: true,
                    onclick: () {
                      setState(() {});
                    },
                  ),
                  const Gap(20),
                  TestSortWidget(
                    text: "Open Tests",
                    isSelected: false,
                    onclick: () {},
                  ),
                  const Gap(32),
                  PrimaryButton(title: "Apply Filters", onPressed: () {})
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class TestSortWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onclick;
  const TestSortWidget({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isSelected
            ? Image.asset("assets/images/round.png")
            : Image.asset("assets/images/circle.png"),
        const Gap(12),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
