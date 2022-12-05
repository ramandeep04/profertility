import 'package:flutter/material.dart';
import 'package:profertility/screens/appointment_created_screen.dart';
import 'package:profertility/screens/checkout_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Appointment"),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xfff7f8fa)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Doctor Details",
                        style: TextStyle(
                            color: Color(0xff1d1d1d),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          Image.asset("assets/images/dr.mario.png"),
                          const SizedBox(width: 12),
                          Column(
                            children: const [
                              Text(
                                "Dr. Mario Arsenio",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff1d1d1d),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Radiology Specialist",
                                style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 11),
                              Text(
                                "01 hour consultation",
                                style: TextStyle(
                                    color: Color(0xff4d1a53),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Appointment Cost",
                          style: TextStyle(color: Color(0xff19144b)),
                        ),
                        Text("\$95.00",
                            style: TextStyle(color: Color(0xff19144b)))
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Consultation fee for 01 hour",
                      style: TextStyle(color: Color(0xff62606d)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Admin fee",
                          style: TextStyle(color: Color(0xff19144b)),
                        ),
                        Text(
                          "\$06.00",
                          style: TextStyle(color: Color(0xff19144b)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "To pay",
                          style: TextStyle(color: Color(0xff19144b)),
                        ),
                        Text("\$100.00",
                            style: TextStyle(
                              color: Color(0xff19144b),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      color: Color(0xff807d98),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: const Color(0xfff7f8fa),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/tag.png"),
                          const Text(
                            "Fertility7323",
                            style: TextStyle(
                              color: Color(0xff4d1a53),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          const Text(
                            "Coupon Applied",
                            style: TextStyle(
                                color: Color(0xff00afa4),
                                fontSize: 10,
                                fontWeight: FontWeight.w200),
                          ),
                          Image.asset("assets/images/close.png")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                "Payment Method",
                style: TextStyle(
                    color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 22),
              const PaymentWidget(
                image: "assets/images/debitcard.png",
                paymentmethod: "Debit/Credit Card",
                mark: "assets/images/round.png",
              ),
              const PaymentWidget(
                image: "assets/images/netbanking.png",
                paymentmethod: "Net Banking",
                mark: "assets/images/circle.png",
              ),
              const PaymentWidget(
                image: "assets/images/cod.png",
                paymentmethod: "Cash On Delivery",
                mark: "assets/images/circle.png",
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PrimaryButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AppointmentCreatedScreen()));
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
