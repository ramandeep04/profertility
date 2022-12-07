import 'package:flutter/material.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class PopularProuctsScreen extends StatelessWidget {
  const PopularProuctsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Popular Products"),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Filters",
                  style: TextStyle(
                    color: Color(0xff898989),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              "36 Total Products",
              style: TextStyle(color: Color(0xff00afa4)),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: const Color(0xfff5f7fd)),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/amlodipine.png",
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Amlodipine",
                        style: TextStyle(
                            color: Color(0xff1d1d1d),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/star.png"),
                          const SizedBox(width: 8),
                          const Text("4.6")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "\$35",
                        style: TextStyle(
                            color: Color(0xff00afa4),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "\$76",
                        style: TextStyle(color: Color(0xff898989)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
