import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class TestSortScreen extends StatelessWidget {
  const TestSortScreen({super.key});

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
                  const Gap(28),
                  Row(
                    children: [
                      Image.asset("assets/images/round.png"),
                      const Gap(12),
                      const Text(
                        "All Tests",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Image.asset("assets/images/circle.png"),
                      const Gap(12),
                      const Text(
                        "Open Tests",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
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
