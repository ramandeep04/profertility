import 'package:flutter/material.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class TestListScreen extends StatefulWidget {
  const TestListScreen({super.key});

  @override
  State<TestListScreen> createState() => _TestListScreenState();
}

class _TestListScreenState extends State<TestListScreen>
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
      appBar: const MyAppbar(title: "My Tests"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  text: "Current",
                ),
                Tab(
                  text: "Past Tests",
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      text: const TextSpan(
                          text: "Showing ",
                          style: TextStyle(color: Color(0xff9d9d9d)),
                          children: <TextSpan>[
                            TextSpan(
                                text: "All Tests",
                                style: TextStyle(
                                    color: Color(0xff1d1d1d),
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      children: const [
                        TestListWidget(
                          testnumber: "#3242333",
                          items: "05",
                          amount: "\$1250",
                          date: "25 May, 2022",
                          status: "In Progress",
                        ),
                        SizedBox(height: 16),
                        TestListWidget(
                          testnumber: "#3247788",
                          items: "02",
                          amount: "\$1250",
                          date: "25 May, 2022",
                          status: "In Progress",
                        ),
                        SizedBox(height: 16),
                        TestListWidget(
                          testnumber: "#3247788",
                          items: "05",
                          amount: "\$1250",
                          date: "25 May, 2022",
                          status: "Pending",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "Showing ",
                          style: TextStyle(color: Color(0xff9d9d9d)),
                          children: <TextSpan>[
                            TextSpan(
                                text: "All Tests",
                                style: TextStyle(
                                    color: Color(0xff1d1d1d),
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                ]
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class TestListWidget extends StatelessWidget {
  final String testnumber;
  final String items;
  final String amount;
  final String date;
  final String status;
  const TestListWidget({
    Key? key,
    required this.testnumber,
    required this.items,
    required this.amount,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Test No.",
                      style: TextStyle(color: Color(0xff1d1d1d)),
                    ),
                    Text(
                      "Items",
                    ),
                    Text("Total"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      testnumber,
                      style: const TextStyle(
                        color: Color(0xff4d1a53),
                      ),
                    ),
                    Text(items, style: const TextStyle(color: Color(0xff1d1d1d))),
                    Text(amount, style: const TextStyle(color: Color(0xff1d1d1d))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(color: Color(0xff898989), fontSize: 10),
                    ),
                    Container()
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff2d92c7),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(6.0),
                  topLeft: Radius.circular(6.0),
                ),
              ),
              child: Text(
                status,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
