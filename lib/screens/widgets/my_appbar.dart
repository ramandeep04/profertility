import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  const MyAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Image.asset("assets/images/arrow-left.png"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      titleSpacing: 0.0,
      centerTitle: false,
      actions: actions,
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xff4d1a53),
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
