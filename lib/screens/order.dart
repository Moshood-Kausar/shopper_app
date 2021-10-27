import 'package:flutter/material.dart';
import 'package:shopper_app/screens/dashboard.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Scaffold(
          backgroundColor:Colors.black,
            body: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DashBoard(),
                      ));
                },
                icon: Icon(Icons.arrow_back, color: Colors.black,size:20,),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
