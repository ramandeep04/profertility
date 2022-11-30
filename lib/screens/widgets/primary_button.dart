import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const PrimaryButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          fixedSize: Size(size.width, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(70))),
      onPressed: onPressed,
      child: Text(
        title,
        style:
            Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
      ),
    );
  }
}