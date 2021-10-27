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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Scaffold(
            body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DashBoard(),
                        ));
                  },
                  icon: Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/pink.png',
                        ),
                        fit: BoxFit.contain),
                  ),
                ),
                SizedBox(height: 10),
                Text('Headphones', style: TextStyle(color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'AirPods Max',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        
                        children: [
                          const CircleAvatar(
                              radius: 15, backgroundColor: Colors.pink),
                          const CircleAvatar(
                              radius: 15, backgroundColor: Colors.grey),
                          CircleAvatar(
                              radius: 15, backgroundColor: Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Center(child: Text("-")),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Text('1'),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: Center(child: Text("+")),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Text("\$549",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ],
                ),
                SizedBox(height:20),
                Text(
                    "High-Fidelity Audio The Apple-designed driver delivers high-fidelity playback ...", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 20),
                Container(height: 60, 
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black, borderRadius:BorderRadius.circular(10)),
                child:Center(child: Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
