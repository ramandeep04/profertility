import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/test_detail_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

import '../config/config.dart';
import 'popular_products_screen.dart';

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
      appBar: MyAppbar(
        title: "My Tests",
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {
                showFilterBottomSheet(context);
              },
              child: Row(
                children: [
                  const Text(
                    "Filters",
                    style: TextStyle(
                      color: Color(0xff898989),
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  Image.asset("assets/images/setting.png"),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(2),
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
                color: Theme.of(context).primaryColor,
              ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
            child: RichText(
              text: TextSpan(
                text: "Showing ",
                style: GoogleFonts.comfortaa()
                    .copyWith(color: const Color(0xff9d9d9d)),
                children: <TextSpan>[
                  TextSpan(
                    text: "All Tests",
                    style: GoogleFonts.comfortaa().copyWith(
                      color: const Color(0xff1d1d1d),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  padding: const EdgeInsets.only(top: 6.0),
                  children: const [
                    TestListWidget(
                      testnumber: "#3242333",
                      items: "05",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "In Progress",
                      color: Color(0xff2d92c7),
                    ),
                    SizedBox(height: 16),
                    TestListWidget(
                      testnumber: "#3247788",
                      items: "02",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "In Progress",
                      color: Color(0xff2d92c7),
                    ),
                    SizedBox(height: 16),
                    TestListWidget(
                      testnumber: "#3247788",
                      items: "05",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "Pending",
                      color: Colors.red,
                    ),
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.only(top: 6.0),
                  children: const [
                    TestListWidget(
                      testnumber: "#3242333",
                      items: "05",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "In Progress",
                      color: Colors.blue,
                    ),
                    SizedBox(height: 16),
                    TestListWidget(
                      testnumber: "#3247788",
                      items: "02",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "Complete",
                      color: Colors.green,
                    ),
                    SizedBox(height: 16),
                    TestListWidget(
                      testnumber: "#3247788",
                      items: "05",
                      amount: "\$1250",
                      date: "25 May, 2022",
                      status: "Pending",
                      color: Color(0xff2d92c7),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      ),
      context: context,
      builder: (context) {
        return const FilterBottomSheet(
          filters: [
            "Sort"
          ],
          childrens: [
            TestFilter(),
          ],
        );
      },
    );
  }
}

class TestListWidget extends StatelessWidget {
  final String testnumber;
  final String items;
  final String amount;
  final String date;
  final String status;
  final Color color;

  const TestListWidget({
    Key? key,
    required this.testnumber,
    required this.items,
    required this.amount,
    required this.date,
    required this.status,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TestDetailScreen(),
          ),
        );
      },
      child: Container(
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
                      Text(
                        items,
                        style: const TextStyle(
                          color: Color(0xff1d1d1d),
                        ),
                      ),
                      Text(
                        amount,
                        style: const TextStyle(
                          color: Color(0xff1d1d1d),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                          color: Color(0xff898989),
                          fontSize: 10,
                        ),
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                alignment: Alignment.center,
                constraints: const BoxConstraints.tightFor(width: 100),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
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
      ),
    );
  }
}

class TestFilter extends StatefulWidget {
  const TestFilter({super.key});

  @override
  State<TestFilter> createState() => _TestFilterState();
}

class _TestFilterState extends State<TestFilter> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 24.0,
      children: List.generate(
        Config.sortingTest.length,
        (index) {
          final filter = Config.sortingTest[index];
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Row(
              children: [
                Image.asset(
                  index == selectedIndex
                      ? "assets/images/male.png"
                      : "assets/images/female.png",
                ),
                const SizedBox(width: 24.0),
                Text(filter)
              ],
            ),
          );
        },
      ),
    );
  }
}
