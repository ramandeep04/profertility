import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(8),
                const Text(
                  "Speciality",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff1d1d1d)),
                ),
                const Gap(16),
                Wrap(
                  spacing: 6.0,
                  runSpacing: 6.0,
                  children: [
                    FilterWidget(
                      text: "OBGYNs",
                      isSelected: selectedIndex == 0,
                      onClick: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                    FilterWidget(
                      text: "Fertility",
                      isSelected: selectedIndex == 1,
                      onClick: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                    FilterWidget(
                      text: "Wellness",
                      isSelected: selectedIndex == 2,
                      onClick: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                    FilterWidget(
                      text: "Nutritionists",
                      isSelected: selectedIndex == 3,
                      onClick: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
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
                SizedBox(
                  height: 56,
                  child: DropdownButtonFormField(
                    icon: Image.asset("assets/images/Polygon.png"),
                    hint: const Text("Select Location"),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Select Category",
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "c",
                        child: Text("USA"),
                      ),
                      DropdownMenuItem(
                        value: "P",
                        child: Text("India"),
                      ),
                    ],
                    onChanged: (v) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onClick;
  const FilterWidget({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffddfffd) : const Color(0xfff7f8fa),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected
                ? Theme.of(context).primaryColor
                : const Color(0xffa2a2a2),
          ),
        ),
      ),
    );
  }
}
