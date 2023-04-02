import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  final Set<Map<String, Object>> myList = {
    {
      "Name": "Toif M",
      "Age": 25,
      "Job": {"Blending"},
    },
    {
      "Name": "Yusuf",
      "Age": 24,
      "Job": {"Cartoning"},
    },
    {
      "Name": "Fajar",
      "Age": 28,
      "Job": {"Caspacker"},
    },
    {
      "Name": "Alan",
      "Age": 27,
      "Job": {"Caspacker"},
    },
    {
      "Name": "Fahri",
      "Age": 27,
      "Job": {"Filling"},
    },
    {
      "Name": "Rohmah",
      "Age": 26,
      "Job": {"Robotic"},
    },
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map(
            (data) {
              print(data["Job"]);
              Object? myfavcolor = data["Job"];
              return Card(
                  margin: EdgeInsets.all(20),
                  color: Colors.black.withOpacity(0.1),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        //row
                        Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : ${data['Name']}"),
                                Text("Age : ${data['Age']}"),
                              ],
                            ),
                          ],
                        ),
                        //favColor
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                        ),
                        Row(children: [
                          Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text("${data['Job']}"),
                          )
                        ]),
                      ],
                    ),
                  ));
            },
          ).toList(),
        ),
      ),
    );
  }
}
