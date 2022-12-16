import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../config/common.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({super.key});

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String? countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70.0),
        color: const Color(0xfff7f8fa),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Common().countryCodePicker(context, (code) {
                setState(() {
                  countryCode = code.phoneCode;
                });
              });
            },
            child: Row(
              children: [
                Text(
                  "+${countryCode ?? "1"}",
                  style: TextStyle(
                    fontSize: 16.0,
                    color:
                        countryCode != null ? Colors.black : Colors.grey[600]!,
                  ),
                ),
                const Gap(8.0),
                Image.asset("assets/images/Polygon.png"),
              ],
            ),
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                filled: true,
                hintText: "Enter phone number...",
                contentPadding: EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 12.0,
                ),
                fillColor: Color(0xfff7f8fa),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
