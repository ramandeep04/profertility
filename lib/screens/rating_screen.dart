import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: null),
      body: Column(
            children: [
          const Text(
            "Rate your Experience",
            style: TextStyle(
                color: Color(0xff4d1a53),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 104),
          const Text(
            "How is your Product?",
            style: TextStyle(color: Color(0xff111111), fontSize: 16),
          ),
          const SizedBox(height: 16),
       
        ],
      ),
    );
  }
}
