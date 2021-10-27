// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopper_app/model/products.dart';
import 'package:shopper_app/screens/order.dart';

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
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Order(),
                    ),
                  ),
              child: Container(height: 300, width: 300, child: items())),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Recommended',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
              Text('View all', style: TextStyle(color: Colors.grey)),
            ],
          ),
          Container(height: 300, width: 300, child: Ritems()),
        ],
      ))),
    );
  }

  Widget items() {
    return ListView.builder(
        itemCount: productItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow[100],
              image: DecorationImage(
                  image: AssetImage('${productItems[index].img}'),
                  fit: BoxFit.contain),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${productItems[index].name}',
                      style: const TextStyle(
                        color: Colors.black,
                      )),
                  Text('\$${productItems[index].amount}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        });
  }

  Widget Ritems() {
    return ListView.builder(
        itemCount: productItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow[100],
              image: DecorationImage(
                  image: AssetImage('${productItems[index].img}'),
                  fit: BoxFit.contain),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${productItems[index].name}',
                      style: const TextStyle(
                        color: Colors.black,
                      )),
                  Text('\$${productItems[index].amount}',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        });
  }
}
