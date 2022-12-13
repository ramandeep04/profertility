import 'package:flutter/material.dart';
import 'package:profertility/screens/schedule_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const MyAppbar(title: "# 28684"),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DoctorWidget(
                    name: "Dr. Mario Arsenio",
                    image: "assets/images/dr.mario.png",
                    specializedIn: "Radiology Specialist",
                    consultationTime: "01 hour consultation",
                    schedule: "Tonight at 6:30 PM",
                    persons: 1,
                    isChatAvailable: true,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Patient Details",
                      style: TextStyle(
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
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
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff4d1a53)),
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
                    const SizedBox(height: 16),
                    const Divider(
                      thickness: 4,
                      color: Color(0xfff6f6f6),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      "Lab Tests",
                      style: TextStyle(
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 22),
                    const LabTestWidget(
                      image: "assets/images/peptide.png",
                      number: "01",
                      type: "C-Peptide",
                      amount: "\$35",
                    ),
                    const SizedBox(height: 8),
                    const LabTestWidget(
                      image: "assets/images/125-test.png",
                      number: "02",
                      type: "CA 125 -Test",
                      amount: "\$35",
                    ),
                    const SizedBox(height: 80),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xffe8e8e8),
                            fixedSize: Size(size.width, 56),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70))),
                        onPressed: (() {}),
                        child: const Text(
                          "1 Hr 30 Mins are left",
                          style: TextStyle(color: Color(0xff898989)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LabTestWidget extends StatelessWidget {
  final String image;
  final String number;
  final String type;
  final String amount;
  const LabTestWidget({
    Key? key,
    required this.image,
    required this.number,
    required this.type,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
          color: const Color(0xfff7f8fa),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(number),
          Column(
            children: [
              Text(
                type,
                style: const TextStyle(
                    color: Color(0xff1d1d1d), fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    " \$76",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff898989)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
