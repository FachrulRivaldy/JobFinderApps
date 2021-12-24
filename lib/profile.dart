import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomPaint(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
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
            SizedBox(
              height: 55,
              child: Center(
                child: Text(
                  "Hans Fahrezi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text(
                  "Surabaya, Jawa Timur",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                  ),
                  Text("Account"),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.play_arrow, size: 35),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.lock, size: 50),
                  Text("Change Password"),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.play_arrow, size: 35),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.logout_rounded, size: 50),
                  Text("Log Out"),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.play_arrow, size: 35),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
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
