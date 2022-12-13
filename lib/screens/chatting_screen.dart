import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:profertility/screens/widgets/my_appbar.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppbar(title: "Dr. Mario Arsenio"),
        body: ListView.separated(
          reverse: true,
          itemBuilder: (BuildContext context, int index) {
            return ChatWidget(
              isSender: index % 2 == 0 ? true : false,
              message: "Hello Doctor!",
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16.0);
          },
          itemCount: 8,
        ));
  }
}

class ChatWidget extends StatelessWidget {
  final bool isSender;
  final String message;
  const ChatWidget({
    Key? key,
    required this.isSender,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          margin: const EdgeInsets.symmetric(horizontal: 26),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isSender
                ? Theme.of(context).primaryColor
                : const Color(0xfff8f8f8),
            borderRadius: isSender
                ? const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
          ),
          child: Text(
            message,
            style: TextStyle(
                color: isSender
                    ? const Color(0xfff4f4f4)
                    : const Color(0xff101010)),
          ),
        ),
      ],
    );
  }
}
