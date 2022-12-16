import 'package:flutter/material.dart';
import 'package:profertility/screens/home_screen.dart';
import 'package:profertility/screens/nearby_doctor_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeScreen(),
          NearbyDoctorScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "null",
            icon: Image.asset(
              "assets/images/category.png",
              color: selectedIndex == 0
                  ? Theme.of(context).primaryColor
                  : Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "null",
            icon: Image.asset(
              "assets/images/vuesax-linear-document-text.png",
              color: selectedIndex == 1
                  ? Theme.of(context).primaryColor
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
