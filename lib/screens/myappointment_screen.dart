import 'package:flutter/material.dart';
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
      appBar: const MyAppbar(title: "My Appointments"),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
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
              ],
            ),
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
                      const SizedBox(height: 14),
                      const AppointmentsWidget(
                        image: "assets/images/dr.mario.png",
                        name: "Dr. Mario Arsenio",
                      ),
                      const SizedBox(height: 14),
                      const AppointmentsWidget(
                        image: "assets/images/Doctor.png",
                        name: "Dr. Mario Arsenio",
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

class AppointmentsWidget extends StatelessWidget {
  final String image;
  final String name;
  const AppointmentsWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
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
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(image),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Fertility Specialist",
                          style: TextStyle(color: Color(0xff666666)),
                        ),
                        Text(
                          "#28684",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4d1a53)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/images/calendar.png"),
                  const SizedBox(width: 4.0),
                  const Text("Tonight at 6:30 PM"),
                  const SizedBox(width: 12.0),
                  Image.asset("assets/images/user.png"),
                  const SizedBox(width: 4.0),
                  const Text("1"),
                ],
              ),
              Text(
                "\$124",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
