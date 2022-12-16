import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/cart_screen.dart';
import 'package:profertility/screens/health_score_screen.dart';
import 'package:profertility/screens/notification_screen.dart';

import 'myappointment_screen.dart';
import 'popular_products_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "assets/images/circleavatar.png",
                  ),
                ),
                const Gap(16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4d1a53),
                        ),
                      ),
                      Text(
                        "Alireza",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1d1d1d),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  radius: 70,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CartScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/cart.png",
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/alert.png",
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HealthScoreScreen(score: 96),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(16.0),
                  constraints: BoxConstraints.tight(const Size(160, 200)),
                  decoration: BoxDecoration(
                    color: const Color(0xff4d1a53),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/love.png"),
                            const Text(
                              "Health Scores",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Color(0xff1d1d1d),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "96%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 46,
                              ),
                            ),
                            Text(
                              "5 mins ago",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xffA78DAA),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const HealthScoreScreen(score: 89),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      constraints: BoxConstraints.tight(const Size(160, 92)),
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f7fd),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/nutrition.png"),
                                const Gap(8.0),
                                const Text(
                                  "Nutrition",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1d1d1d),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "89%",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              const Text(
                                "Total",
                                style: TextStyle(
                                  color: Color(0xff898989),
                                  fontSize: 12,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffffa68d),
                                      Color(0xfffd3a84),
                                    ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "11%",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset("assets/images/arrow_down.png")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(16.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HealthScoreScreen(
                            score: 59,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      constraints: BoxConstraints.tight(const Size(160, 92)),
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f7fd),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/menstruals.png"),
                                const Gap(8.0),
                                const Text(
                                  "Menstruals",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1d1d1d),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Regular",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff00afa4),
                                      Color(0xff1f8d85),
                                    ],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "59%",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset("assets/images/arrow_up.png")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's find your doctor",
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(16.0),
                Container(
                  padding: const EdgeInsets.only(left: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[100]!,
                        offset: const Offset(0.0, 2),
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Search...",
                            contentPadding: EdgeInsets.all(16),
                            fillColor: Colors.white,
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/search_icon.png",
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(24.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const HealthScoreScreen(score: 96),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF4F7FC),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset("assets/images/health.png"),
                                  const Gap(16.0),
                                  const Text(
                                    "Total Health Results",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff1d1d1d),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text("See All"),
                            ),
                          ],
                        ),
                        const Gap(6.0),
                        Image.asset("assets/images/graph.png"),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Low",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff898989),
                                ),
                              ),
                              Text(
                                "Border",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff898989),
                                ),
                              ),
                              Text(
                                "Normal",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff898989),
                                ),
                              ),
                              Text(
                                "High",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff898989),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Reminders",
                      style: TextStyle(
                        color: Color(0xff1d1d1d),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyAppointmentscreen(),
                          ),
                        );
                      },
                      child: const Text("See All"),
                    ),
                  ],
                ),
                const AppointmentsWidget(
                  image: "assets/images/dr.mario.png",
                  name: "Dr. Mario Arsenio",
                ),
                const Gap(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Products",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PopularProductsScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff00afa4),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 1.8,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const ProductItem(
                  assetImage: "assets/images/125-test.png",
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
