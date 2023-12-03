// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(radius: 30),
            Text(
              "Erick Mwai",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "mwai@mwai.com",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.only(top: 12.0),
              itemCount: _dashboardItem.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                Map<String, dynamic> singleDash = _dashboardItem[index];
                return Card(
                  child: Container(
                    color: Colors.grey[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          singleDash["title"],
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        Text(
                          singleDash["subtitle"],
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }

  static List<Map<String, dynamic>> _dashboardItem = [
    {
      "title": "400",
      "subtitle": "Users",
    },
    {
      "title": "5",
      "subtitle": "Categories",
    },
    {
      "title": "20",
      "subtitle": "Products",
    },
    {
      "title": "30",
      "subtitle": "Earning",
    },
    {
      "title": "200",
      "subtitle": "Pending Orders",
    },
    {
      "title": "25",
      "subtitle": "Completed Orders",
    },
    {
      "title": "10",
      "subtitle": "Cancelled Orders",
    },
    {
      "title": "45",
      "subtitle": "Delivered Orders",
    },
  ];
}
