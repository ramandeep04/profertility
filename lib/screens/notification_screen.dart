import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Notifications"),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Recent",
                  style: TextStyle(color: Color(0xff4c5f68), fontSize: 16),
                ),
              ),
              const SizedBox(height: 12),
              const NotificationWidget(
                image: "assets/images/Locationpin.png",
                message: "Booking #1234 has been successful",
              ),
              const SizedBox(height: 2),
              const NotificationWidget(
                image: "assets/images/person.png",
                message: "Thank you! Your transaction is completed",
              ),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Older Notification",
                    style: TextStyle(color: Color(0xff4c5f68), fontSize: 16)),
              ),
              const SizedBox(height: 22),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Booking #1205 has been cancelled",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/person.png"),
                title: const Text(
                  "Booking #1234 has been successful",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Booking #1205 has been cancelled",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/person.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  final String image;
  final String message;
  const NotificationWidget({
    Key? key,
    required this.image,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xffa8a9b4)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              image,
            ),
            const SizedBox(width: 12),
            Text(
              message,
              style: const TextStyle(
                  color: Color(0xff020a0c), fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
