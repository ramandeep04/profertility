import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class PromocodesScreen extends StatelessWidget {
  const PromocodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppbar(title: "Promocodes"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset("assets/images/tag.png"),
                  hintText: "Apply Coupon",
                  suffixText: "Apply",
                ),
              ),
              const Gap(20),
              const Text(
                "Available Coupons",
                style: TextStyle(
                    color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Enjoy an additional 10% off",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "On your 1st order from pro fertility app!",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "SAVE",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "EGP 26.00",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(18),
                    Row(
                      children: [
                        const Text(
                          "FERTILITY7323",
                          style: TextStyle(
                              color: Color(0xff4d1a53),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Gap(30),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Apply",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
