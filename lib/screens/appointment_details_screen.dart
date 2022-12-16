import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/product_details_screen.dart';
import 'package:profertility/screens/schedule_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  bool isDelayed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "#28684"),
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Patient Details",
                      style: TextStyle(
                        color: Color(0xff1d1d1d),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Text(
                          "Edward Collen ",
                          style: TextStyle(
                            color: Color(0xff4d1a53),
                          ),
                        ),
                        Text(
                          " 2233 3843 009",
                          style: TextStyle(
                            color: Color(0xff4d1a53),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "CollenEd5237@gmail.com",
                      style: TextStyle(
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Sector 44 C",
                      style: TextStyle(
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "856 Spinka Inlet Apt. 576 US",
                      style: TextStyle(
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
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
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
                    const SizedBox(height: 24),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDelayed = !isDelayed;
                        });
                      },
                      child: PrimaryButton(
                        title: isDelayed ? "1 Hr 30 Mins are left" : "Join Now",
                        onPressed: isDelayed ? null : () {},
                      ),
                    ),
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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
            color: const Color(0xfff7f8fa),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                image,
                width: 80,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              number,
              style: const TextStyle(
                color: Color(0xff1d1d1d),
              ),
            ),
            Column(
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    color: Color(0xff1d1d1d),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(4.0),
                    const Text(
                      " \$76",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff898989),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
