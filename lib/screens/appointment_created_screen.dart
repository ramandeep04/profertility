import 'package:flutter/material.dart';

class AppointmentCreatedScreen extends StatelessWidget {
  const AppointmentCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff00afa4),
        body: Stack(
          
          children: [
            SizedBox.expand(
              child: Image.asset("assets/images/wcbackg.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/welcometick.png"),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Your Appointment has\n been created",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  
                  "Your appointment with Dr.Maria Schedule in\nmask was made on Wednesday, March 22\nat 16:00 pm",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffffffff),
                  fontSize: 12),
                )
              ],
            )
          ],
        ));
  }
}
