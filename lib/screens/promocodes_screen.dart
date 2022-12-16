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
            const Gap(34),
            const Text(
              "Available Coupons",
              style: TextStyle(
                color: Color(0xff1d1d1d),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const Gap(20),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const CouponItem();
                },
                separatorBuilder: (context, index) {
                  return const Gap(16.0);
                },
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CouponItem extends StatelessWidget {
  final String? title;
  final String? description;
  final String? code;
  final String? amount;

  const CouponItem({
    Key? key,
    this.title,
    this.description,
    this.code,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/coupon.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 12,
              top: 12,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "Enjoy an additional 10% off",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff1d1d1d),
                      ),
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          description ??
                              "On your 1st order from pro fertility app!",
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "SAVE",
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              amount ?? "EGP 26.00",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      code ?? "FERTILITY7323",
                      style: const TextStyle(
                          color: Color(0xff4d1a53),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(30),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop("FERTILITY7323");
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 24.0),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
