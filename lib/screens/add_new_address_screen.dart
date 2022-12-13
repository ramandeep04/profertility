import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Add New Address"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Located Address"),
                  const Gap(9),
                  const Text(
                    "Chicago, USA",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4d1a53)),
                  ),
                  const Gap(26),
                  Row(
                    children: const [
                      AddressWidget(
                        isSelected: true,
                        text: "HOME",
                      ),
                      Gap(6),
                      AddressWidget(
                        isSelected: false,
                        text: "WORK",
                      ),
                      Gap(6),
                      AddressWidget(
                        isSelected: false,
                        text: "PERSONAL",
                      ),
                    ],
                  ),
                  const Gap(18),
                  const TextField(
                    decoration: InputDecoration(hintText: "Enter House No."),
                  ),
                  const Gap(18),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        hintText: "Enter Complete Address"),
                  ),
                ],
              ),
            ),
            const Gap(18),
            PrimaryButton(title: "Save", onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const AddressWidget({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffececec),
        ),
        borderRadius: BorderRadius.circular(30),
        color: isSelected ? Theme.of(context).primaryColor : Colors.white,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : const Color(0xff4d1a53)),
      ),
    );
  }
}
