import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/schedule_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              bottom: false,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1.8,
                    child: Container(
                      color: Colors.grey[200],
                      child: Image.asset(
                        "assets/images/doctor_placeholder.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).maybePop();
                      },
                      icon: Image.asset("assets/images/arrow-left.png"),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/favourite.png",
                        width: 34,
                        height: 34,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dr. Mario Arsenio",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff19144b),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Radiology Specialist",
                    style: TextStyle(
                      color: Color(0xff62606d),
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset("assets/images/map.png"),
                      const SizedBox(width: 4),
                      Text(
                        "2630 Wheeler Bridge, 768 New York",
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                "Patients",
                                style: TextStyle(
                                  color: Color(0xff1d1d1d),
                                ),
                              ),
                              Gap(6.0),
                              Text(
                                "500+",
                                style: TextStyle(
                                  color: Color(0xff4d1a53),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Color(0xff707070),
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                "Experience",
                                style: TextStyle(
                                  color: Color(0xff1d1d1d),
                                ),
                              ),
                              Gap(6.0),
                              Text(
                                "5 Years +",
                                style: TextStyle(
                                  color: Color(0xff4d1a53),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(color: Color(0xff707070)),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "Rate",
                                style: TextStyle(color: Color(0xff1d1d1d)),
                              ),
                              const Gap(6.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/star.png",
                                    width: 16,
                                    height: 16,
                                    fit: BoxFit.cover,
                                  ),
                                  const Gap(4.0),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Color(0xff4d1a53),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Biography",
                    style: TextStyle(
                      color: Color(0xff1d1d1d),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's dummy text ever since. Read more",
                    style: TextStyle(
                      color: Color(0xff898989),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Address",
                    style: TextStyle(
                      color: Color(0xff1d1d1d),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset("assets/images/address.png"),
                  const SizedBox(height: 24),
                  PrimaryButton(
                    title: "Make an Appointment",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ScheduleScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
