import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Schedule"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(color: Color(0xfff7f8fa)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Doctor Details",
                  style: TextStyle(
                      color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Image.asset("assets/images/dr.mario.png"),
                    const SizedBox(width: 12),
                    Column(
                      children: const [
                        Text(
                          "Dr. Mario Arsenio",
                          style: TextStyle(
                              color: Color(0xff1d1d1d),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Radiology Specialist",
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Schedule Service",
                  style: TextStyle(
                      color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 14),
                Text(
                  "Select Person",
                  style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
               SizedBox(height: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
