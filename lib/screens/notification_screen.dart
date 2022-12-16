import 'package:flutter/material.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  "Recent",
                  style: TextStyle(
                    color: Color(0xff4c5f68),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
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
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  "Older Notification",
                  style: TextStyle(
                    color: Color(0xff4c5f68),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Booking #1205 has been cancelled",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/person.png"),
                title: const Text(
                  "Booking #1234 has been successful",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Booking #1205 has been cancelled",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/person.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/Locationpin.png"),
                title: const Text(
                  "Thank you! Your transaction is completed",
                  style: TextStyle(
                    color: Color(0xff1a1824),
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
      decoration: BoxDecoration(color: Colors.grey[100]!),
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
                color: Color(0xff020a0c),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
