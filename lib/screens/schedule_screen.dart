import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/appointment_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Schedule"),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorWidget(
                name: "Dr.Mario Arsenio",
                specializedIn: "Radiology Specialist",
                image: "assets/images/dr.mario.png",
              ),
              const Gap(14),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Schedule Service",
                      style: TextStyle(
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.bold),
                    ),
                    const Gap(18),
                    Row(
                      children: const [
                        Text(
                          "Select Person",
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Gap(16.0),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const Gap(16),
                    Row(
                      children: const [
                        SelectPersonWidget(
                          isSelected: true,
                        ),
                        Gap(6),
                        SelectPersonWidget(
                          isSelected: false,
                        ),
                      ],
                    ),
                    const Gap(22),
                    Row(
                      children: const [
                        Text(
                          "Select Dates",
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Gap(16.0),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "May",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  const Gap(12),
                  SizedBox(
                    height: 80,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        final date = DateTime.now();
                        return CalendarItem(
                          isToday: selectedDateIndex == index,
                          date: date.add(Duration(days: index)),
                          onClick: () {
                            setState(() {
                              selectedDateIndex = index;
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Gap(16.0);
                      },
                    ),
                  ),
                  const Gap(42),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: const [
                        Text(
                          "At What Time",
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Gap(16.0),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: const [
                            TimeWidget(isSelected: true),
                            TimeWidget(isSelected: false),
                            TimeWidget(isSelected: true),
                            TimeWidget(isSelected: true),
                            TimeWidget(isSelected: true),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)),
                          hintText: "Add Instructions"),
                    ),
                  ),
                  const Gap(50),
                  PrimaryButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const AppointmentScreen()),
                        );
                      }),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final bool isSelected;

  const TimeWidget({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xfff7f8fa)
            : Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: const [
          Text(
            "8:00",
            style: TextStyle(fontSize: 16, color: Color(0xff111111)),
          ),
          Gap(8),
          Text(
            "-8:50",
            style: TextStyle(fontSize: 12, color: Color(0xff949494)),
          )
        ],
      ),
    );
  }
}

class CalendarItem extends StatelessWidget {
  final bool isToday;
  final DateTime date;
  final VoidCallback onClick;
  const CalendarItem({
    Key? key,
    required this.isToday,
    required this.date,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isToday ? Theme.of(context).primaryColor : null,
              border: isToday
                  ? null
                  : Border.all(
                      color: const Color(0xffdedede),
                    ),
              shape: BoxShape.circle,
            ),
            child: Text(
              DateFormat("d").format(date),
              style: TextStyle(
                color: isToday ? Colors.white : Colors.black,
              ),
            ),
          ),
          Text(
            DateFormat.EEEE().format(date),
          ),
        ],
      ),
    );
  }
}

class SelectPersonWidget extends StatelessWidget {
  final bool isSelected;
  const SelectPersonWidget({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).primaryColor
            : const Color(0xfff7f8fa),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Image.asset("assets/images/user.png",
                color: isSelected ? Colors.white : Colors.black),
            const Gap(12),
            Text(
              "Person 1",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorWidget extends StatelessWidget {
  final String name;
  final String image;
  final String specializedIn;
  final String? consultationTime;
  final String? schedule;
  final int? persons;
  final bool isChatAvailable;

  const DoctorWidget({
    Key? key,
    required this.name,
    required this.image,
    required this.specializedIn,
    this.consultationTime,
    this.schedule,
    this.persons,
    this.isChatAvailable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Color(0xfff7f8fa)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Doctor Details",
                style: TextStyle(
                  color: Color(0xff1d1d1d),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(24.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage(image),
                  ),
                  const Gap(16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              color: Color(0xff1d1d1d),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Gap(10.0),
                        Text(
                          specializedIn,
                          style: const TextStyle(
                              color: Color(0xff666666),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        const Gap(10.0),
                        if (consultationTime != null)
                          Text(
                            consultationTime!,
                            style: const TextStyle(
                                color: Color(0xff4d1a53),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        const Gap(12.0),
                        if (schedule != null && persons != null)
                          Row(
                            children: [
                              Image.asset("assets/images/calendar.png"),
                              const Gap(4.0),
                              Text(
                                schedule!,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const Gap(16.0),
                              Image.asset("assets/images/user.png"),
                              const Gap(4.0),
                              Text("$persons"),
                            ],
                          )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          if (isChatAvailable)
            Positioned(
              right: 10,
              top: 30,
              child: Image.asset("assets/images/messages.png"),
            ),
        ],
      ),
    );
  }
}
