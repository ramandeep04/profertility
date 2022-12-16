import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:profertility/screens/welcome_profertility_screen.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';
import 'package:profertility/screens/widgets/phone_number_field.dart';
import 'package:profertility/screens/widgets/primary_button.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(title: "Profile Setup"),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 130,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/camera.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Full Name",
              ),
            ),
            const SizedBox(height: 16),
            const PhoneNumberField(),
            const SizedBox(height: 16),
            DateTimeFormField(context: context),
            const SizedBox(height: 16),
            DropdownButtonFormField(
              icon: Image.asset("assets/images/Polygon.png"),
              decoration: const InputDecoration(
                hintText: "Sex at birth",
                contentPadding: EdgeInsets.all(20),
              ),
              items: const [
                DropdownMenuItem(
                  value: "c",
                  child: Text("Male"),
                ),
                DropdownMenuItem(
                  value: "P",
                  child: Text("Female"),
                ),
                DropdownMenuItem(
                  value: "j",
                  child: Text("Other"),
                ),
              ],
              onChanged: (v) {},
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "How old are you?",
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email Address",
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField(
              icon: Image.asset("assets/images/Polygon.png"),
              decoration: const InputDecoration(
                hintText: "Marital Status",
                contentPadding: EdgeInsets.all(20),
              ),
              items: const [
                DropdownMenuItem(
                  value: "c",
                  child: Text("Single"),
                ),
                DropdownMenuItem(
                  value: "P",
                  child: Text("Married"),
                ),
                DropdownMenuItem(
                  value: "j",
                  child: Text("Widow / Widower"),
                ),
                DropdownMenuItem(
                  value: "i",
                  child: Text("Divorced"),
                ),
              ],
              onChanged: (v) {},
            ),
            const SizedBox(height: 34),
            PrimaryButton(
              title: "Submit",
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WelcomeProfertility(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class DateTimeFormField extends FormField<DateTime> {
  final BuildContext context;

  DateTimeFormField({
    Key? key,
    required this.context,
    FormFieldSetter<DateTime>? onSaved,
    FormFieldValidator<DateTime>? validator,
    DateTime? initialValue,
    bool autovalidate = false,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          builder: (FormFieldState<DateTime> state) {
            return InkWell(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: state.value ?? DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now(),
                );
                state.didChange(date);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 22),
                    decoration: BoxDecoration(
                      color: const Color(0xfff7f8fa),
                      border: state.hasError
                          ? Border.all(
                              color: Theme.of(context).colorScheme.error,
                              width: 1.0,
                            )
                          : null,
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(dateTime(state.value)),
                            Image.asset(
                              "assets/images/calendar.png",
                              fit: BoxFit.contain,
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (state.hasError)
                    AnimatedOpacity(
                      opacity: state.hasError ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              state.errorText ??
                                  "Please select a Date of Birth",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            );
          },
        );

  static String dateTime(DateTime? selectedDate) {
    if (selectedDate == null) {
      return "Date of Birth";
    } else {
      return DateFormat('dd/MM/yyyy').format(selectedDate);
    }
  }
}
