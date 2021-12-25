import 'package:flutter/material.dart';
import 'package:job_finder_apps/page/jobdetail.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 15,
                ),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
                JobRecommendation(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class JobRecommendation extends StatelessWidget {
  const JobRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => JobDetail()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/chat_pic.png",
                  height: 64,
                  width: 64,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Android Developer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Vodafone Ltd. - Jerusalem"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Onsite - USD10K/month")
                  ],
                ),
                SizedBox(width: 10),
                Text("Until\n26 Dec\n2021",
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
