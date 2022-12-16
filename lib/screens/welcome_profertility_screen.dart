import 'package:flutter/material.dart';
import 'package:profertility/screens/general_questions_screen.dart';

class WelcomeProfertility extends StatefulWidget {
  const WelcomeProfertility({super.key});

  @override
  State<WelcomeProfertility> createState() => _WelcomeProfertilityState();
}

class _WelcomeProfertilityState extends State<WelcomeProfertility> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const GeneralQuestionsScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00afa4),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/wcbackg.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("assets/images/welcometick.png"),
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome to Profertility",
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry.",
                style: TextStyle(color: Color(0xffffffff)),
              )
            ],
          )
        ],
      ),
    );
  }
}
