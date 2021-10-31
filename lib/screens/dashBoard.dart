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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(20)),
              child:Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(children: [
                  Icon(Icons.search, color: Colors.grey), 
                  Text('Search...', style:TextStyle(color: Colors.grey))],),
              )
            ),
          ),
          SizedBox(height: 30),
          const Text("Popular",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              )),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Sort by price", style: TextStyle(color: Colors.grey)),
              Icon(Icons.tune),
            ],
          ),
          SizedBox(height:10),
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Order(),
                    ),
                  ),
              child: Container(height: 380, child: items())),
          const SizedBox(height: 50),
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
          const SizedBox(height: 20),
          Container(height: 300, child: Ritems()),
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
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                height: 400,
                width: 280,
                //color: Colors.yellow[100],
                color: '${productItems[index].bcolor}',
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Column(
                   
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                        height: 300,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('${productItems[index].img}'),
                              fit: BoxFit.contain),
                        )),
                    Text('${productItems[index].name}',
                        style: const TextStyle(
                          color: Colors.black,
                        )),
                    Text('\$${productItems[index].amount}',
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ]),
                )),
          );
        });
  }

  Widget Ritems() {
    return ListView.builder(
        itemCount: productItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.green[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('${productItems[index].img}'),
                              fit: BoxFit.contain),
                        )),
                  ),
                  Padding(
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ])),
          );
        });
  }
}
