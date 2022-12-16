import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/config/config.dart';
import 'package:profertility/screens/filter_screen.dart';

class PersonalizedScreen extends StatefulWidget {
  const PersonalizedScreen({super.key});

  @override
  State<PersonalizedScreen> createState() => _PersonalizedScreenState();
}

class _PersonalizedScreenState extends State<PersonalizedScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Popular Dietition",
          style: TextStyle(
            color: Color(0xff4d1a53),
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Text(
                    "Filters",
                    style: TextStyle(
                      color: Color(0xff898989),
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  Image.asset("assets/images/setting.png"),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox.fromSize(
            size: const Size.fromHeight(65),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = Config.dietition[index];
                  return FilterWidget(
                    text: item,
                    isSelected: selectedIndex == index,
                    onClick: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(16.0);
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              itemBuilder: (context, index) {
                final dietCard = Config.diet[index];
                return DietItem(
                  title: dietCard["title"]!,
                  description: dietCard["description"]!,
                  image: dietCard["image"]!,
                );
              },
              separatorBuilder: (context, index) {
                return const Gap(20.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DietItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const DietItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.5),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(6.0),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  fixedSize: const Size(110, 20),
                ),
                onPressed: () {},
                child: const Text(
                  "Explore",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
