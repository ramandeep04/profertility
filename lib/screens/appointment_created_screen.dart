import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/test_list_screen.dart';

class AppointmentCreatedScreen extends StatefulWidget {
  const AppointmentCreatedScreen({super.key});

  @override
  State<AppointmentCreatedScreen> createState() =>
      _AppointmentCreatedScreenState();
}

class _AppointmentCreatedScreenState extends State<AppointmentCreatedScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const TestListScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00afa4),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/images/wcbackg.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/welcometick.png"),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Your Appointment has been created",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold),
                ),
                const Gap(24),
                const Text(
                  "Your appointment with Dr. Maria Schedule in mask was made on Wednesday, March 22 at 16:00 pm",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
