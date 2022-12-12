import 'package:flutter/material.dart';
import 'package:profertility/screens/cart_screen.dart';
import 'package:profertility/screens/appointment_details_screen.dart';
import 'package:profertility/screens/notification_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class TestDetailScreen extends StatelessWidget {
  const TestDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "#STR7834"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 2,
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                          "assets/images/125-test.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xff18b579),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Complete",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xffe63939),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(4.0),
                              topLeft: Radius.circular(2.0),
                              topRight: Radius.circular(4.0)),
                        ),
                        child: const Text(
                          "50%OFF",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "CA 125-Test",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff272c3f)),
                    ),
                    Image.asset("assets/images/heart.png"),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$35",
                          style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).primaryColor),
                        ),
                        const Text(
                          " \$35",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Color(0xff666666)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/groupofstar.png"),
                        const Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff272c3f),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "+ 0.25 Taxes",
                      style: TextStyle(fontSize: 10, color: Color(0xff666666)),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "3,222 DELIVERY ",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff272c3f)),
                          children: <TextSpan>[
                            TextSpan(
                              text: "REVIEWS",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff96979c)),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1d1d1d),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing & typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                  style: TextStyle(fontSize: 12, color: Color(0xff666666)),
                ),
                const SizedBox(height: 20),
                const Divider(color: Color(0xfff6f6f6), thickness: 4),
                const SizedBox(height: 20),
                const Text(
                  "Patient details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1d1d1d),
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: const [
                    Text(
                      "Edward Collen ",
                      style: TextStyle(
                        color: Color(0xff4d1a53),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      " 2233 3843 009",
                      style: TextStyle(fontSize: 12, color: Color(0xff4d1a53)),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "CollenEd5237@gmail.com",
                  style: TextStyle(color: Color(0xff1d1d1d), fontSize: 12),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Sector 44 C",
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "856 Spinka Inlet Apt. 576 US",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff1d1d1d),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(color: Color(0xfff6f6f6), thickness: 4),
                const SizedBox(height: 20),
                const Text(
                  "Tests",
                  style: TextStyle(
                      color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 14),
                const LabTestWidget(
                    image: "assets/images/peptide.png",
                    number: "01",
                    type: "C-Peptide",
                    amount: "\$35 "),
                const SizedBox(height: 8),
                const LabTestWidget(
                    image: "assets/images/125-test.png",
                    number: "02",
                    type: "CA 125-Test",
                    amount: "\$35 "),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 22,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40.0)),
                    color: Color(0xffebfafb),
                  ),
                  child: Wrap(
                    runSpacing: 24,
                    children: [
                      Text(
                        "Payment Summary",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SummaryWidget(
                          leading: "Order Total", trailing: "\$123.35"),
                      const SummaryWidget(
                          leading: "Item Discount", trailing: "-\$28.00"),
                      const SummaryWidget(
                          leading: "Coupon Discount", trailing: " -\$16.80"),
                      const SummaryWidget(
                          leading: "Shipping", trailing: "Free"),
                      const SizedBox(height: 16),
                      const Divider(
                        color: Color(0xff0000000),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Color(0xff1d1d1d),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$115.00",
                            style: TextStyle(
                                color: Color(0xff00afa4),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Payment method",
                  style: TextStyle(
                      color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/mastercard.png"),
                    const SizedBox(width: 4),
                    const Text(
                      "Mastercard",
                      style: TextStyle(color: Color(0xff1d1d1d)),
                    ),
                  ],
                ),
                Center(
                  child: TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xff666666)),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                    title: "Download Report",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ),
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
