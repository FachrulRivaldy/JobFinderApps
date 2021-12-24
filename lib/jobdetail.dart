import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomPaint(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                painter: HeaderCurvedContainer(),
              ),
              Container(
                width: 150,
                height: 150,
                child: Image.asset("assets/images/chat_pic.png"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Senior UI Designer",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 5,
                ),
                Text("Jakarta, Indonesia", style: TextStyle(fontSize: 14)),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child:
                            Text("Full Time", style: TextStyle(fontSize: 12))),
                    Container(
                        child: Text("Onsite", style: TextStyle(fontSize: 12))),
                    Container(
                        child: Text("Senior", style: TextStyle(fontSize: 12)))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About This Job",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Currently we are in need of several UI Designers to complete our designer shortage, we hope that with this we can improve the quality of our user interface to customers, because it is very important for...",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Job Responsibilites",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "At least have 3 years of experience as a UI Designer",
                  style: TextStyle(fontSize: 12),
                ),
                Text("Able to work in a team or individually",
                    style: TextStyle(fontSize: 12)),
                Text("Have a good passion in UI Design",
                    style: TextStyle(fontSize: 12)),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Apply"),
                  style: ElevatedButton.styleFrom(fixedSize: Size(310, 50)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFF1666C5);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
