import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: null),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "assets/images/diet.png",
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ],
                ),
                Positioned.fill(child: Image.asset("assets/images/play.png"))
              ],
            ),
            const Gap(16),
            const Text(
              "How to Maintain body wait",
              style: TextStyle(
                  color: Color(0xff4d1a53), fontWeight: FontWeight.bold),
            ),
            const Gap(10),
            const Text(
              "Want to join ? Click on the button below to join in now",
              style: TextStyle(color: Color(0xff898989), fontSize: 12),
            ),
            const Gap(20),
            const Text(
              "Exercise include",
              style: TextStyle(
                  color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
            ),
            const Gap(16),
            Row(
              children: [
                Container(
                  width: 60,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset(
                    "assets/images/exercise.png",
                  ),
                ),
                const Gap(12),
                Container(
                  width: 60,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: const Color(0xfff0fafa)),
                  child: Image.asset("assets/images/2.png"),
                ),
                Gap(12),
                Container(
                  width: 60,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/yoga.png"),
                ),
                const Gap(12),
                Container(
                  width: 60,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/workout.png"),
                ),
                const Gap(12),
                Container(
                  width: 60,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/position.png"),
                ),
              ],
            ),
            const Gap(12),
            const Text(
              "About instructor",
              style: TextStyle(
                  color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text:
                          "Hi, my name is Sarah, I have been teaching yoga for 10 years, my classes are a feel-good workout and “work-in” accessible to everyone… ",
                      style: TextStyle(color: Color(0xff898989), fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Read more",
                            style: TextStyle(
                                color: Color(0xff07a89d), fontSize: 12))
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                    child: Image.asset("assets/images/sports.png")),
              ],
            ),
            const Text(
              "Description",
              style: TextStyle(
                  color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
            ),
            const Gap(9),
            RichText(
              text: const TextSpan(
                text:
                    "Hi, my name is Sarah, I have been teaching yoga for 10 years, my classes are a feel-good workout and “work-in” accessible to everyone… ",
                style: TextStyle(color: Color(0xff898989), fontSize: 12),
                children: <TextSpan>[
                  TextSpan(
                    text: "Read more",
                    style: TextStyle(color: Color(0xff07a89d), fontSize: 12),
                  ),
                ],
              ),
            ),
            const Gap(60),
            PrimaryButton(
              title: "Buy E-Book",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
