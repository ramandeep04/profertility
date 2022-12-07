import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class MyAppointmentscreen extends StatefulWidget {
  const MyAppointmentscreen({super.key});

  @override
  State<MyAppointmentscreen> createState() => _MyAppointmentscreenState();
}

class _MyAppointmentscreenState extends State<MyAppointmentscreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: "My Appointments"),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xfff7f8fa),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff898989),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor),
                tabs: const [
                  Tab(
                    text: "Upcoming",
                  ),
                  Tab(
                    text: "Past",
                  ),
                ]),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: "Showing ",
                            style: TextStyle(color: Color(0xff9d9d9d)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "All Appointments",
                                  style: TextStyle(
                                      color: Color(0xff1d1d1d),
                                      fontWeight: FontWeight.w500)),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        constraints: const BoxConstraints.tightFor(height: 110),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[200]!,
                                blurRadius: 5,
                                spreadRadius: 2,
                                offset: const Offset(0.0, 2.0),
                              )
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/dr.mario.png"),
                            Column(
                              children: [
                                const Text("Dr. Mario Arsenio"),
                                Row(
                                  children: const [
                                    Text(
                                      "Fertility Specialist",
                                      style:
                                          TextStyle(color: Color(0xff666666)),
                                    ),
                                    Text("# 28684"),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text("data"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
