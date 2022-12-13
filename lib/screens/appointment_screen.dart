import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/config/config.dart';
import 'package:profertility/screens/appointment_created_screen.dart';
import 'package:profertility/screens/cart_screen.dart';
import 'package:profertility/screens/checkout_screen.dart';
import 'package:profertility/screens/schedule_screen.dart';
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
              const DoctorWidget(
                name: "Dr. Mario Arsenio",
                image: "assets/images/dr.mario.png",
                specializedIn: "Radiology Specialist",
                consultationTime: "01 hour consultation",
              ),
              const Gap(20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    const Gap(14.0),
                    const Text(
                      "Consultation fee for 01 hour",
                      style: TextStyle(color: Color(0xff62606d)),
                    ),
                    const Gap(20),
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
                    const Gap(20),
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
                    const Gap(20),
                    const Divider(
                      color: Color(0xff807d98),
                    ),
                    const SizedBox(height: 16),
                    const CartCouponWidget(
                      coupon: "Feritility7323",
                    )
                  ],
                ),
              ),
              const Gap(22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Payment Method",
                      style: TextStyle(
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(22),
                    const SelectPaymentWidget(),
                    const Gap(26),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: PrimaryButton(
                          title: "Continue",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const AppointmentCreatedScreen()));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SelectPaymentWidget extends StatefulWidget {
  const SelectPaymentWidget({super.key});

  @override
  State<SelectPaymentWidget> createState() => _SelectPaymentWidgetState();
}

class _SelectPaymentWidgetState extends State<SelectPaymentWidget> {
  int selectedPaymentMethod = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Column(
        children: List.generate(
          Config.paymentOptions.length,
          (index) {
            final paymentOption = Config.paymentOptions[index];
            return PaymentWidget(
              onClick: () {
                setState(() {
                  selectedPaymentMethod = index;
                });
              },
              image: paymentOption["image"]!,
              isSelected: selectedPaymentMethod == index,
              paymentmethod: paymentOption["title"]!,
            );
          },
        ),
      ),
    );
  }
}
