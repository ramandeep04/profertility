import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profertility/screens/cart_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: null),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                  Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Image.asset("assets/images/glimepiride.png",
                        height: 220,
                        width: 290,
                            fit: BoxFit.contain),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Epiride M1",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff272c3f),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.favorite_border),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "\$35",
                            style: TextStyle(
                                color: Color(0xff00afa4),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 12),
                          Text(
                            "\$35",
                            style:
                                TextStyle(fontSize: 14, color: Color(0xff666666)),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star),
                          Text(
                            "4.5",
                            style:
                                TextStyle(fontSize: 10, color: Color(0xff272c3f)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "+ 0.25 Taxes",
                        style: TextStyle(color: Color(0xff666666), fontSize: 10),
                      ),
                      RichText(
                          text: const TextSpan(
                              text: "3,222 DELIVERY",
                              style:
                                  TextStyle(fontSize: 10, color: Color(0xff272c3f)),
                              children: <TextSpan>[
                            TextSpan(
                              text: " REVIEWS",
                              style:
                                  TextStyle(fontSize: 10, color: Color(0xff96979)),
                            )
                          ])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Description",
                    style: TextStyle(
                        color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing & typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Product Info",
                    style: TextStyle(
                        color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const ProductInfo(
                    leading: "Seller Name",
                    trailing: "Salace Cardea",
                  ),
                  const SizedBox(height: 16),
                  const ProductInfo(
                    leading: "Expiry Date",
                    trailing: "21 March, 2021",
                  ),
                  const SizedBox(height: 16),
                  const ProductInfo(
                    leading: "Classification",
                    trailing: "Valid till 11 March, 2022",
                  ),
                  const SizedBox(height: 16),
                  const ProductInfo(
                    leading: "Packaging Size",
                    trailing: "20 pc.",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Related Products",
                        style: TextStyle(color: Color(0xff1d1d1d)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00afa4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: PrimaryButton(
                        title: "Add to Cart",
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const CartScreen()),
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  final String leading;
  final String trailing;
  const ProductInfo({
    Key? key,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: const TextStyle(color: Color(0xff1d1d1d)),
        ),
        Text(
          trailing,
          style: const TextStyle(color: Color(0xff666666)),
        ),
      ],
    );
  }
}
