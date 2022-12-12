import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  const MyAppbar(
      {super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).maybePop();
        },
        icon: Image.asset("assets/images/arrow-left.png"),
      ),
      titleSpacing: 0.0,
      centerTitle: false,
      leadingWidth: 65,
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                  color: Color(0xff4d1a53), fontWeight: FontWeight.w500),
            )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
