// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Popular",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Sort by price", style: TextStyle(color: Colors.grey)),
              Icon(Icons.tune),
            ],
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              image: const DecorationImage(
                  image: AssetImage("assets/red.png"), fit: BoxFit.contain),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: const [
                  Text('AirPods Max' ,style:TextStyle(color: Colors.black,)),
                  Text("\$549", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ))),
    );
  }
}
