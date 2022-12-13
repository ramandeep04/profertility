import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profertility/config/config.dart';
import 'package:profertility/screens/product_details_screen.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class PopularProductsScreen extends StatelessWidget {
  const PopularProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset("assets/images/arrow-left.png"),
          onPressed: () {},
        ),
        titleSpacing: 0.0,
        centerTitle: false,
        title: const Text(
          "Popular Products",
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff4d1a53),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {
                showFilterBottomSheet(context);
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "36 Total Products",
              style: TextStyle(color: Color(0xff00afa4)),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(
                    assetImage: index % 2 == 0
                        ? "assets/images/amlodipine.png"
                        : "assets/images/glimepiride.png",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      ),
      context: context,
      builder: (context) {
        return const FilterBottomSheet();
      },
    );
  }
}

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet>
    with SingleTickerProviderStateMixin {
  late PageController controller;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xffe5e5e5),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterItem(
                  filter: "Filter",
                  isSelected: selectedIndex == 0,
                  onClick: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                ),
                FilterItem(
                  filter: "Sort",
                  isSelected: selectedIndex == 1,
                  onClick: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  children: const [
                    FilterSheet(),
                    SortingFilter(),
                  ],
                ),
              ),
            ),
            PrimaryButton(
              title: "Apply filters",
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final String filter;
  final bool isSelected;
  final VoidCallback onClick;
  const FilterItem({
    Key? key,
    required this.filter,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text.rich(
        TextSpan(
          text: filter,
          style: const TextStyle(fontSize: 20.0, color: Colors.black),
          children: [
            if (isSelected)
              WidgetSpan(
                alignment: PlaceholderAlignment.top,
                child: Row(
                  children: [
                    const SizedBox(width: 4.0),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
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

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Price range",
            ),
            Text(
              "\$20-\$1600",
            ),
          ],
        ),
        Slider(
          value: price,
          onChanged: (v) {
            setState(() {
              price = v;
            });
          },
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 56,
          child: DropdownButtonFormField(
            icon: Image.asset("assets/images/Polygon.png"),
            hint: const Text("Select Category"),
            decoration: const InputDecoration(
              hintText: "Select Category",
              contentPadding: EdgeInsets.all(20),
            ),
            items: const [
              DropdownMenuItem(
                value: "c",
                child: Text("Capsules"),
              ),
              DropdownMenuItem(
                value: "P",
                child: Text("Capsules"),
              ),
            ],
            onChanged: (v) {},
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 56,
          child: DropdownButtonFormField(
            icon: Image.asset("assets/images/Polygon.png"),
            hint: const Text("Select Brand"),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(20),
              hintText: "Select Category",
            ),
            items: const [
              DropdownMenuItem(
                value: "c",
                child: Text("Capsules"),
              ),
              DropdownMenuItem(
                value: "P",
                child: Text("Capsules"),
              ),
            ],
            onChanged: (v) {},
          ),
        ),
      ],
    );
  }
}

class SortingFilter extends StatefulWidget {
  const SortingFilter({super.key});

  @override
  State<SortingFilter> createState() => _SortingFilterState();
}

class _SortingFilterState extends State<SortingFilter> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 24.0,
      children: List.generate(
        Config.sortingFilters.length,
        (index) {
          final filter = Config.sortingFilters[index];
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Row(
              children: [
                Image.asset(
                  index == selectedIndex
                      ? "assets/images/male.png"
                      : "assets/images/female.png",
                ),
                const SizedBox(width: 24.0),
                Text(filter)
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String assetImage;
  const ProductItem({
    Key? key,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen(),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xfff3f4f5),
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f7fd),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.asset(
                        assetImage,
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Color(0xffB9B9B9),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(
                            child: Text(
                              "Amlodipine",
                              style: TextStyle(
                                color: Color(0xff1d1d1d),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: <InlineSpan>[
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.top,
                                  child: Image.asset("assets/images/star.png"),
                                ),
                                const WidgetSpan(child: SizedBox(width: 2.0)),
                                TextSpan(
                                  text: "4.6",
                                  style: GoogleFonts.comfortaa().copyWith(
                                    color: const Color(0xff898989),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            text: "\$35",
                            style: GoogleFonts.comfortaa().copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                            children: [
                              const WidgetSpan(
                                child: SizedBox(
                                  width: 6.0,
                                ),
                              ),
                              TextSpan(
                                text: "\$76",
                                style: GoogleFonts.comfortaa().copyWith(
                                  color: const Color(0xff898989),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
