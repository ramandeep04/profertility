import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  children: const [
                    OnboardingPageWidget(
                      image: "assets/images/onboard.png",
                      title: "Track your Reports",
                      descrip:
                          " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    ),
                    OnboardingPageWidget(
                      image: "assets/images/board2.png",
                      title: "Consult with Doctor",
                      descrip:
                          " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    ),
                    OnboardingPageWidget(
                      image: "assets/images/3.png",
                      title: "Follow Steps & Stay Healthy",
                      descrip:
                          " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                    ),
                  ],
                ),
              ),
              const Gap(22),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(235, 250, 251, 1),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (currentIndex > 0)
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _pageController.previousPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  child: Image.asset(
                                    "assets/images/back_onboarding.png",
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Gap(80)
                              ],
                            ),
                          InkWell(
                            onTap: () {
                              if (currentIndex >= 2) {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const SignupScreen(),
                                  ),
                                );
                              } else {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut);
                              }
                            },
                            child: Image.asset(
                              "assets/images/arrow.png",
                              width: 55,
                              height: 55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Image.asset(
              "assets/images/123.png",
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class OnboardingPageWidget extends StatelessWidget {
  final String image;
  final String title;
  final String descrip;

  const OnboardingPageWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.descrip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        const Gap(4),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Color(0xff4d1a53),
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(4.0),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Divider(
                        thickness: 2,
                        color: Color(0xffe5e5e5),
                      ),
                    ),
                    const Gap(8.0),
                    Text(
                      descrip,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xff898989),
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
