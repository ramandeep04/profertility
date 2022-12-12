import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/popular_products_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

import 'cart_screen.dart';
import 'widgets/primary_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(
        title: null,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                      "assets/images/glimepiride.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Epiride M1",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff272c3f),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "\$35",
                              style: GoogleFonts.comfortaa().copyWith(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                const WidgetSpan(
                                  child: SizedBox(
                                    width: 6.0,
                                  ),
                                ),
                                TextSpan(
                                  text: "\$35",
                                  style: GoogleFonts.comfortaa().copyWith(
                                    fontSize: 14.0,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff666666),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RatingBarIndicator(
                                rating: 4.5,
                                direction: Axis.horizontal,
                                unratedColor: const Color(0xffdedede),
                                itemCount: 5,
                                itemSize: 16,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              const SizedBox(width: 2.0),
                              const Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "+ 0.25 Taxes",
                            style: GoogleFonts.comfortaa().copyWith(
                              color: const Color(0xff666666),
                              fontSize: 12,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "3,222 DELIVERY",
                              style: GoogleFonts.comfortaa().copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: " REVIEWS",
                                  style: GoogleFonts.comfortaa().copyWith(
                                    fontSize: 12,
                                    color: const Color(0xff666666),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold,
                        ),
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
                          fontSize: 16.0,
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold,
                        ),
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
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Related Products",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1d1d1d),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff00afa4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AspectRatio(
                  aspectRatio: 1.8,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductItem(
                        assetImage: "assets/images/glimepiride.png",
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 16.0);
                    },
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: PrimaryButton(
                title: "",
                child: const AddToCartWidget(isInCart: true),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CartScreen()),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddToCartWidget extends StatelessWidget {
  final bool isInCart;
  const AddToCartWidget({super.key, required this.isInCart});

  @override
  Widget build(BuildContext context) {
    if (isInCart) {
      return Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tight(
                      const Size.square(45),
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF4DC7BF),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                const Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(width: 10.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.tight(
                      const Size.square(45),
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF4DC7BF),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Text.rich(
              TextSpan(
                  text: "\$ 199.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    WidgetSpan(child: SizedBox(width: 8.0)),
                    TextSpan(
                      text: "Go to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );
    } else {
      return const Text(
        "Add to Cart",
        style: TextStyle(
          color: Colors.white,
        ),
      );
    }
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
