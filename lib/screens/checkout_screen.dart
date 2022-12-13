import 'package:flutter/material.dart';
import 'package:profertility/screens/appointment_screen.dart';
import 'package:profertility/screens/track_order_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedAddress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Checkout"),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Personal Details",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff1d1d1d),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Image.asset("assets/images/circleavatar.png"),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Alireza",
                          style: TextStyle(
                            color: Color(0xff1d1d1d),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset("assets/images/sms.png"),
                            const SizedBox(width: 4),
                            const Text(
                              "CollenEd5237@gmail.com",
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset("assets/images/call-calling.png"),
                            const SizedBox(width: 4),
                            const Text(
                              "+1 555 086 0012",
                              style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff1d1d1d),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add New",
                        style: TextStyle(
                            color: Color(0xff4d1a53),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                AddressWidget(
                  location: "Home",
                  number: "+1 555 086 0012",
                  address: "2630 Wheeler Bridge",
                  isSelected: selectedAddress == 0,
                  onClick: () {
                    setState(() {
                      selectedAddress = 0;
                    });
                  },
                ),
                const SizedBox(height: 12),
                AddressWidget(
                  location: "Work",
                  number: "+1 555 086 0012",
                  address: "2630 Wheeler Bridge",
                  isSelected: selectedAddress == 1,
                  onClick: () {
                    setState(() {
                      selectedAddress = 1;
                    });
                  },
                ),
                const SizedBox(height: 12),
                AddressWidget(
                  location: "Office",
                  number: "+1 555 086 0012",
                  address: "2630 Wheeler Bridge",
                  isSelected: selectedAddress == 2,
                  onClick: () {
                    setState(() {
                      selectedAddress = 2;
                    });
                  },
                ),
                const SizedBox(height: 24),
                const Text(
                  "Payment Method",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff1d1d1d),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                const SelectPaymentWidget(),
                const SizedBox(height: 22),
                PrimaryButton(
                    title: "Pay Now \$185.00",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TrackOrderScreen(),
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

class PaymentWidget extends StatelessWidget {
  final String image;
  final String paymentmethod;
  final VoidCallback onClick;
  final bool isSelected;
  const PaymentWidget({
    Key? key,
    required this.image,
    required this.paymentmethod,
    this.isSelected = false,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xfff7f8fa),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                Text(paymentmethod),
                Image.asset(
                  isSelected
                      ? "assets/images/round.png"
                      : "assets/images/circle.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  final String location;
  final String number;
  final String address;
  final bool isSelected;
  final VoidCallback onClick;

  const AddressWidget({
    Key? key,
    required this.location,
    required this.number,
    required this.address,
    required this.onClick,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      radius: 12.0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfff7f8fa),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  isSelected
                      ? "assets/images/male.png"
                      : "assets/images/female.png",
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      number,
                      style: const TextStyle(
                        color: Color(0xff898989),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      address,
                      style: const TextStyle(
                        color: Color(0xff898989),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
