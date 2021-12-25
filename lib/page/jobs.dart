import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
          'Jobs',
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
              launch("https://www.wsj.com/news/business",
                  forceWebView: true, enableJavaScript: false);
            },
            icon: Icon(Icons.perm_device_information),
          ),
        ],
      ),
      body: ListView(
        children: [
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
          JobsContainer(),
        ],
      ),
    );
  }
}

class JobsContainer extends StatelessWidget {
  const JobsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Application Approved",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Congratulations! You're now part of us")
              ],
            ),
            SizedBox(
              width: 60,
            ),
            Text("1 h ago"),
          ],
        ),
      ),
    );
  }
}
