import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
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
        child: ListView(
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
            const Gap(24),
            const Text(
              "How to Maintain body wait",
              style: TextStyle(
                  color: Color(0xff4d1a53), fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            const Text(
              "Want to join ? Click on the button below to join in now",
              style: TextStyle(color: Color(0xff898989), fontSize: 12),
            ),
            const Gap(24),
            const Text(
              "Exercise include",
              style: TextStyle(
                color: Color(0xff1d1d1d),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: 70,
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset(
                    "assets/images/exercise.png",
                  ),
                ),
                const Gap(12),
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xfff0fafa),
                  ),
                  child: Image.asset("assets/images/2.png"),
                ),
                const Gap(12),
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: 70,
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset(
                    "assets/images/yoga.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Gap(12),
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: 70,
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/workout.png"),
                ),
                const Gap(12),
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  height: 70,
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/position.png"),
                ),
              ],
            ),
            const Gap(24),
            const Text(
              "About instructor",
              style: TextStyle(
                  color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text:
                          "Hi, my name is Sarah, I have been teaching yoga for 10 years, my classes are a feel-good workout and “work-in” accessible to everyone… ",
                      style: GoogleFonts.comfortaa().copyWith(
                        color: const Color(0xff898989),
                        fontSize: 12,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: "Read more",
                          style: TextStyle(
                            color: Color(0xff07a89d),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(8.0),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(color: Color(0xfff0fafa)),
                  child: Image.asset("assets/images/sports.png"),
                ),
              ],
            ),
            const Text(
              "Description",
              style: TextStyle(
                  color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
            ),
            const Gap(9),
            RichText(
              text: TextSpan(
                text:
                    "Hi, my name is Sarah, I have been teaching yoga for 10 years, my classes are a feel-good workout and “work-in” accessible to everyone… ",
                style: GoogleFonts.comfortaa().copyWith(
                  color: const Color(0xff898989),
                  fontSize: 12,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: "Read more",
                    style: TextStyle(color: Color(0xff07a89d), fontSize: 12),
                  ),
                ],
              ),
            ),
            const Gap(24),
            PrimaryButton(
              title: "Buy E-Book",
              onPressed: () {},
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
