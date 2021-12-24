import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer(),
        ChatContainer()
      ],
    ));
  }
}

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/chat_pic.png",
              height: 64,
              width: 64,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "HRD IBM Japan",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Okay")
              ],
            ),
            SizedBox(
              width: 75,
            ),
            Text("1 h ago"),
          ],
        ),
      ),
    );
  }
}
