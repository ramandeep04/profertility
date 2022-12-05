import 'package:flutter/material.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: "Cart"),
      body: ListView(
        
        children: [
          
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfff7f8fa),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/amlodipine.png",
                            width: 120,
                            height: 120,
                          ),
                          Column(
                            children: [
                              const Text(
                                "Amlodipine",
                                style: TextStyle(
                                    color: Color(0xff1d1d1d),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                "Packing of 20 tablets",
                                style: TextStyle(
                                    color: Color(0xff666666), fontSize: 12),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: const [
                                  Text(
                                    "\$66",
                                    style: TextStyle(
                                        color: Color(0xff00afa4),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      fixedSize: const Size(24, 24),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Icon(Icons.minimize),
                                  ),
                                  const Text('2'),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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
                      borderSide: const BorderSide(color: Color.fromARGB(255, 223, 223, 223)),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefix: const Icon(Icons.edit),
                    hintText: "Add Instructions",
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 22,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40.0)),
                      color: Color(0xffebfafb),
                    ),
                    child: Wrap(
                      runSpacing: 24.0,
                      children: [
                        const Text(
                          "Payment Summary",
                          style: TextStyle(
                              color: Color(0xff00afa4),
                              fontWeight: FontWeight.bold),
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
                  ),
                ),
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
