import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Dr. Mario Arsena",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset("assets/images/chat_back.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Image.asset(
              "assets/images/video_call.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today at 5:03 PM",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  );
                }
                return ChatWidget(
                  isSender: index % 2 == 0 ? true : false,
                  message: "Hello Doctor!",
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(16.0);
              },
              itemCount: 4,
            ),
          ),
          SafeArea(
            top: false,
            child: Container(
              padding: const EdgeInsets.only(right: 8.0, left: 16.0),
              margin: const EdgeInsets.only(
                left: 20,
                bottom: 16,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                color: const Color(0xfff7f8fa),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/circleavatar.png",
                    ),
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 16.0),
                      hintText: "Type Something..",
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  )),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/attachment.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/send.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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
