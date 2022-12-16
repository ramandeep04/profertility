import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/cart_screen.dart';
import 'package:profertility/screens/myappointment_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: null),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(34.0),
                  const Text(
                    "Rate your Experience",
                    style: TextStyle(
                        color: Color(0xff4d1a53),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        const Text(
                          "How is your Product?",
                          style: TextStyle(
                            color: Color(0xff111111),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 16),
                        RatingBar.builder(
                          initialRating: 4.5,
                          glow: false,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          unratedColor: const Color(0xffdfdfdf),
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        const SizedBox(height: 16),
                        const AddInstructionWidget(
                          hint: "Write something your experience",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff4d1a53),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  PrimaryButton(
                    title: "Submit",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyAppointmentscreen(),
                        ),
                      );
                    },
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
