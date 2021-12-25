import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Chat',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
        actions: [
          IconButton(
            onPressed: () {
              launch("tel:+6283117365868");
            },
            icon: Icon(Icons.call),
          ),
        ],
      ),
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
      ),
    );
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
