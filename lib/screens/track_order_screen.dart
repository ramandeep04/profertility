import 'package:flutter/material.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xff00afa4),
        body: Stack(
          children: [
            Image.asset("assets/images/wcbackg.png", fit: BoxFit.cover),
            SafeArea(
              bottom: false,
              child: Column(
                children: [
                  SizedBox.fromSize(size: const Size.fromHeight(90)),
                  Image.asset("assets/images/welcometick.png",
                ),
                  const SizedBox(height: 12),
                  const Text(
                    "Thank you for Ordering.\n   We are on our way.",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 26),
                  Image.asset("assets/images/trackorder.png"),
                  const SizedBox(height: 130),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xfff7f8fa),
                            fixedSize: Size(size.width, 56),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(70))),
                        onPressed: () {},
                        child: const Text("Track Order",
                            style: TextStyle(
                              color: Color(0xff00afa4),
                            ))),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
