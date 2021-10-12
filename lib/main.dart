import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:[
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Latest News",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Today's Matches",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'images/ti10_dota2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "TI 10 Main Event: Team Infos, Schedule, and Bracket Playoff",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: 70,
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    child: Text("Updates"),
                    color: Colors.purpleAccent,
                    width: double.infinity,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/alliance.jpg',
                          width: 170,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          margin: EdgeInsets.all(1),
                          height: 97,
                          alignment: Alignment.centerLeft,
                          child: Text("Alliance S4: “When it comes to LAN, experience matters and it’s just very different than online tournaments”"),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      width: double.infinity,
                      child: Text(
                        "Bucharest, 11th October 2021",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}