import 'package:flutter/material.dart';
import 'package:profertility/screens/welcome_profertility_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: ListView(
          padding: const EdgeInsets.all(24),
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 24),
                      Text(
                        "Profile Setup",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4d1a53)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  SizedBox(
                    height: 130,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            radius: 60,
                            child: Image.asset("assets/images/profile.png"),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset("assets/images/camera.png")),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Simran Ahitaan",
                        hintStyle: TextStyle(color: Color(0xff1d1d1d))),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "91      93230 02660",
                      prefixIcon: Image.asset("assets/images/Polygon.png"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      prefixIcon: Image.asset("assets/images/Polygon.png"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Sex at birth",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "How old are you?",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "simranhaitaan1997@gmail.com",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Marital Status",
                    ),
                  ),
                  const SizedBox(height: 60),
                  PrimaryButton(
                      title: "Submit",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const WelcomeProfertility(),
                          ),
                        );
                      })
                ],
              ),
            ],
          )),
    );
  }
}
