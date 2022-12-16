import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Add New Address"),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/maps.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12.0),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 50,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xffe5e5e5),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
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
                  Wrap(
                    spacing: 6.0,
                    children: [
                      AddressWidget(
                        isSelected: selectedItem == 0,
                        text: "HOME",
                        onClick: () {
                          setState(() {
                            selectedItem = 0;
                          });
                        },
                      ),
                      AddressWidget(
                        isSelected: selectedItem == 1,
                        text: "WORK",
                        onClick: () {
                          setState(() {
                            selectedItem = 1;
                          });
                        },
                      ),
                      AddressWidget(
                        isSelected: selectedItem == 2,
                        text: "PERSONAL",
                        onClick: () {
                          setState(() {
                            selectedItem = 2;
                          });
                        },
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
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: "Enter Complete Address",
                    ),
                  ),
                  const Gap(18),
                  SafeArea(
                    top: false,
                    child: PrimaryButton(
                      title: "Save",
                      onPressed: () {},
                    ),
                  ),
                  const Gap(18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onClick;
  const AddressWidget({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          border: isSelected
              ? null
              : Border.all(
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
            color: isSelected ? Colors.white : const Color(0xff4d1a53),
          ),
        ),
      ),
    );
  }
}
