import 'package:flutter/material.dart';

class WelcomeProfertility extends StatelessWidget {
  const WelcomeProfertility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: const Color(0xff00afa4),
        body: Stack(
          children: [
            Image.asset("assets/images/wcbackg.png"),
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
        ));
  }
}
