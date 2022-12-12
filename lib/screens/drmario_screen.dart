import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/schedule_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class DrMArioScreen extends StatelessWidget {
  const DrMArioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: null),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              color: Colors.grey[200],
              child: Image.asset(
                "assets/images/dr.mario.png",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Dr. Mario Arsenio",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff19144b)),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Radiology Specialist",
                  style: TextStyle(color: Color(0xff62606d)),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/map.png"),
                    const SizedBox(width: 4),
                    Text(
                      "2630 Wheeler Bridge,768 New York",
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: const [
                    Text("Patients"),
                    Text("Experience"),
                    Text("Rate"),
                  ],
                ),
                Row(
                  children: const [
                    Text("500+"),
                    Text("5 Years +"),
                    Text("4.5")
                  ],
                ),
                const SizedBox(height: 28),
                const Text(
                  "Biography",
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's dummy text ever since. Read more",
                  style: TextStyle(color: Color(0xff898989), fontSize: 12),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Address",
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset("assets/images/address.png"),
                const SizedBox(height: 24),
                PrimaryButton(
                    title: "Make an Appointment",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ScheduleScreen(),
                        ),
                      );
                    },
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
