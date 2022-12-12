import 'package:flutter/material.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Your Cart"),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CartItem(),
                  const SizedBox(
                    height: 8,
                  ),
                  const CartItem(),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Apply Coupon",
                        suffixIcon: Icon(Icons.close),
                        prefixIcon: Icon(Icons.sell)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 223, 223, 223)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      prefix: const Icon(Icons.edit),
                      hintText: "Add Instructions",
                    ),
                  ),
                  const SizedBox(height: 16),
                  const PaymentSummary(),
                  const SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: PrimaryButton(
                      title: "Proceed to Checkout",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 22,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(40.0)),
        color: Color(0xffebfafb),
      ),
      child: Wrap(
        runSpacing: 16.0,
        children: [
          const Text(
            "Payment Summary",
            style: TextStyle(
                color: Color(0xff00afa4), fontWeight: FontWeight.bold),
          ),
          const SummaryWidget(
            leading: "Order Total",
            trailing: "\$123.35",
          ),
          const SummaryWidget(
            leading: "Item Discount",
            trailing: "- \$28.00",
          ),
          const SummaryWidget(
            leading: "Coupon Discount",
            trailing: "- \$16.80",
          ),
          const SummaryWidget(
            leading: "Shipping",
            trailing: "Free",
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
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CartItem extends StatefulWidget {
  final Size? buttonSize;
  const CartItem({
    Key? key,
    this.buttonSize,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints.tight(
        Size(size.width, 120),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfff7f8fa),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Image.asset(
                "assets/images/amlodipine.png",
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Amlodipine",
                  style: TextStyle(
                    color: Color(0xff1d1d1d),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Packing of 20 tablets",
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "\$66",
                      style: TextStyle(
                        color: Color(0xff00afa4),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              amount -= 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints.tight(
                              widget.buttonSize ?? const Size.square(35),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffE0E0E0),
                              ),
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Color(0xffB1B1B3),
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "$amount",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        InkWell(
                          onTap: () {
                            setState(() {
                              amount += 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints.tight(
                             widget.buttonSize ?? const Size.square(35),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
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
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SummaryWidget extends StatelessWidget {
  final String leading;
  final String trailing;
  const SummaryWidget({
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
          style: const TextStyle(
              color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
        ),
        Text(
          trailing,
          style: const TextStyle(
              color: Color(0xff1d1d1d), fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
