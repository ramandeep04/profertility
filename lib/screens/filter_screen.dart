import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: const BoxDecoration(),
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
                  const Gap(20),
                  const Divider(
                    color: Color(0xffe8e8e8),
                    thickness: 2,
                  ),
                  const Gap(16),
                  const Text(
                    "Speciality",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff1d1d1d)),
                  ),
                  const Gap(16),
                  Wrap(
                    runSpacing: 10,
                    children: const [
                      FilterWidget(
                        text: "OBGYNs",
                        isSelected: true,
                      ),
                      SizedBox(width: 8),
                      FilterWidget(
                        text: "Fertility",
                        isSelected: false,
                      ),
                      SizedBox(width: 8),
                      FilterWidget(
                        text: "Wellness",
                        isSelected: true,
                      ),
                      SizedBox(width: 8),
                      FilterWidget(
                        text: "Nutritionists",
                        isSelected: true,
                      ),
                    ],
                  ),
                  const Gap(18),
                  const Text(
                    "Select Location",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff1d1d1d)),
                  ),
                  const Gap(18),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xfff7f8fa),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Austin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1d1d1d)),
                        ),
                        DropdownButton(items: const [
                          DropdownMenuItem(
                            value: 2,
                            child: Text("India"),
                          )
                        ], onChanged: ((value) {}))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: PrimaryButton(title: "Apply Filters", onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

class FilterWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const FilterWidget({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xfff7f8fa) : const Color(0xffddfffd),
          borderRadius: BorderRadius.circular(40)),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected
                ? const Color(0xffa2a2a2)
                : Theme.of(context).primaryColor),
      ),
    );
  }
}
