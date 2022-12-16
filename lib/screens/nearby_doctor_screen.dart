import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/screens/doctor_detail_screen.dart';
import 'package:profertility/screens/filter_screen.dart';

import 'popular_products_screen.dart';

class NearbyDoctorScreen extends StatelessWidget {
  const NearbyDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          "Nearby Doctors",
          style: TextStyle(
            color: Color(0xff4d1a53),
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24.0),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return const FilterBottomSheet(
                      filters: ["Sort"],
                      childrens: [
                        FilterScreen(),
                      ],
                    );
                  },
                );
              },
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
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return DoctorGridItem(
            isFavourite: index % 4 == 0,
          );
        },
      ),
    );
  }
}

class DoctorGridItem extends StatefulWidget {
  final String? name;
  final String? specializedIn;
  final String? experience;
  final String? rating;
  final String? image;
  final bool isFavourite;

  const DoctorGridItem({
    super.key,
    this.name,
    this.specializedIn,
    this.experience,
    this.rating,
    this.image,
    this.isFavourite = false,
  });

  @override
  State<DoctorGridItem> createState() => _DoctorGridItemState();
}

class _DoctorGridItemState extends State<DoctorGridItem> {
  late bool isFaviourite;

  @override
  void initState() {
    super.initState();
    isFaviourite = widget.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DoctorDetailScreen(),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      widget.image ?? "assets/images/doctor_placeholder.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFaviourite = !isFaviourite;
                        });
                      },
                      child: Image.asset(
                        isFaviourite
                            ? "assets/images/favourite.png"
                            : "assets/images/fav_border.png",
                        fit: BoxFit.cover,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.name ?? "Dr. Mario Arsena",
                    style: const TextStyle(
                      color: Color(0xff1d1d1d),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.specializedIn ?? "Radiologist",
                    style: const TextStyle(
                      color: Color(0xff62606d),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/briefcase.png",
                        fit: BoxFit.cover,
                        width: 14,
                        height: 14,
                      ),
                      const Gap(4.0),
                      Text(
                        widget.experience ?? "4 years",
                        style: GoogleFonts.comfortaa().copyWith(
                          fontSize: 12,
                          color: const Color(0xff1d1d1d),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(8.0),
                      Image.asset(
                        "assets/images/star.png",
                        fit: BoxFit.cover,
                        width: 14,
                        height: 14,
                      ),
                      const Gap(4.0),
                      Text(
                        widget.rating ?? "4.6",
                        style: GoogleFonts.comfortaa().copyWith(
                          fontSize: 12,
                          color: const Color(0xff1d1d1d),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
